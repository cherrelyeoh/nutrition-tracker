export abstract class AIIntegrationService {
  abstract testFunction(imageBase64String: string): Promise<string>;
}
