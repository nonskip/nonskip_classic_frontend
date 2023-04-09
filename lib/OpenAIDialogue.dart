import 'OpenAIMessage.dart';

class  OpenAIDialogue {
  // just use default model
  String model = "gpt-3.5-turbo";
  List<OpenAIMessage> messages;

  OpenAIDialogue({
    required this.messages,
  });
  
  factory OpenAIDialogue.fromJson(Map<String, dynamic> json) {
    return OpenAIDialogue(
      messages: List<OpenAIMessage>.from(json['messages'].map((x) => OpenAIMessage.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'model': model,
      'messages': List<dynamic>.from(messages.map((x) => OpenAIMessage.toJson(x))),
    };
  }
}