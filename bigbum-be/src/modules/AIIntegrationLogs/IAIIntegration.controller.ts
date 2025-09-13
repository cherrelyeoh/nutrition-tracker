export interface IAIIntegration {
  extractNutrients(base64: string): Promise<void>;
}
