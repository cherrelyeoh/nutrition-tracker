export abstract class AIIntegrationService {
  abstract testFunction(imageBase64String: string): Promise<string>;

  abstract AIPromptWithImage(
    imageBase64String: string,
    prompt: string,
  ): Promise<any>;

  abstract calculateTokenCost(inputTokens: number, outputTokens: number);
}
