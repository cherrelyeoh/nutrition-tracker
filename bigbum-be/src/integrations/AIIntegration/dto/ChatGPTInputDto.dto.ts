export class ChatGPTInputDto {
  model: string;
  max_tokens: number;
  temperature: number;
  top_p: number;
  frequency_penalty: number;
  presence_penalty: number;
  messages: ChatGPTInputMessagesDto[];
}

export class ChatGPTInputMessagesDto {
  role: string;
  content: { type: string; text?: string; image_url?: { url: string } }[];
}
