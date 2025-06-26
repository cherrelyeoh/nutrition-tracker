import { Injectable } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { UserBiodataEntity } from './UserBiodata.entity';
import { Repository } from 'typeorm';
import { TypeOrmCrudService } from '@dataui/crud-typeorm';
import { ExtractBiodataInputDto } from './dto/ExtractUserBiodataInput.dto';
import { ExtractBiodataOutputDto } from './dto/ExtractUserBiodataOutput.dto';
import { AIPromptService } from '../AIPrompt/AIPrompt.service';
import { AIPromptEntity } from '../AIPrompt/AIPrompt.entity';
import { PromptName } from '../AIPrompt/AIPrompt.constants';
import { AIIntegrationLogsService } from '../AIIntegrationLogs/AIIntegrationLogs.service';
import { AIIntegrationService } from 'src/integrations/AIIntegration/AIIntegration.abstract';
import { AIIntegrationLogsEntity } from '../AIIntegrationLogs/AIIntegrationLogs.entity';
import { UserService } from '../User/User.service';

@Injectable()
export class UserBiodataService extends TypeOrmCrudService<UserBiodataEntity> {
  constructor(
    @InjectRepository(UserBiodataEntity)
    public repo: Repository<UserBiodataEntity>,
    private aiPromptService: AIPromptService,
    private aiLogService: AIIntegrationLogsService,
    private aiIntegrationService: AIIntegrationService,
    private userService: UserService,
  ) {
    super(repo);

    // Debugging logs
    console.log('Repository initialized:', !!repo);
    console.log('Repository manager:', !!repo?.manager);
    console.log('Connection state:', repo?.manager?.connection?.isInitialized);

    // Ensure CRUD options exist
    if (!(this as any).options) {
      (this as any).options = {
        query: {
          alwaysPaginate: true,
          limit: 10,
          maxLimit: 100,
          join: {
            user: { eager: true },
          },
        },
      };
    }
  }

  async extractUserBiodata(
    input: ExtractBiodataInputDto,
  ): Promise<ExtractBiodataOutputDto> {
    let userBiodata = new UserBiodataEntity();

    if (input.userId) {
      userBiodata = await this.repo.findOne({
        where: { user: { id: input.userId } },
      });
    }

    let prompt: AIPromptEntity = null;

    prompt = await this.aiPromptService.getOneFromName(
      PromptName.FullBodyScanning,
    );
    const startTime = Date.now(); // Start timer

    const response = await this.aiIntegrationService.AIPromptWithImage(
      input.bodyImageFront,
      prompt.promptRequest,
    );

    const endTime = Date.now(); // End timer
    const timeTaken = endTime - startTime; // Calculate duration in milliseconds

    // Prepare AI log data
    const aiLog = new AIIntegrationLogsEntity();
    aiLog.actionUrl = 'ChatGPT';
    aiLog.request = prompt.promptRequest;
    aiLog.response = JSON.stringify(response);
    aiLog.responseType = prompt.promptName;
    aiLog.requestDuration = timeTaken;
    aiLog.promptToken = response.usage.total_tokens ?? 0;
    aiLog.cost = await this.aiIntegrationService.calculateTokenCost(
      Number(response.usage.prompt_tokens),
      Number(response.usage.completion_tokens),
    );
    aiLog.createdBy = await this.userService.findOne({
      where: { id: input.userId },
    });
    aiLog.promptType = prompt;

    await this.aiLogService.create(aiLog);
    // eslint-disable-next-line @typescript-eslint/no-unsafe-call
    const cleanedContent = response.choices[0].message.content
      .replace(/```json/g, '') // Remove ```json
      .replace(/```/g, '') // Remove closing ```
      .replace(/\\n/g, '') // Remove escaped newlines
      .replace(/\\"/g, '"'); // Fix escaped quotes

    const rawContent = JSON.parse(cleanedContent);
    if (rawContent.UserIntakeTargetEstimate && rawContent.UserBiodataEstimate) {
      const biodataDto = this.mapToExtractBiodataOutput(rawContent);
      return biodataDto;
    }
  }
  private mapToExtractBiodataOutput(
    parsedContent: any,
  ): ExtractBiodataOutputDto {
    const intake = parsedContent.UserIntakeTargetEstimate;
    const bio = parsedContent.UserBiodataEstimate;

    const result = new ExtractBiodataOutputDto();
    result.calories = parseInt(intake.Calories);
    result.protein = parseInt(intake.Protein);
    result.fats = parseInt(intake.Fats);
    result.carbs = parseInt(intake.Carbs);
    result.mainMacro = intake.MainMacro;

    result.age = bio.Age;
    result.weight = bio.Weight;
    result.height = bio.Height;
    result.bmi = parseFloat(bio.BMI);
    result.bodyFat = parseFloat(bio.BodyFat);
    result.muscleMass = parseFloat(bio.MuscleMass);
    result.goal = bio.Goal;
    result.physicalActivity = bio.PhysicalActivity;

    return result;
  }
}
