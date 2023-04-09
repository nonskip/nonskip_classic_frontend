


class OpenAIMessage {
  String role;
  String content;
  OpenAIMessage({
    required this.role,
    required this.content,
  });

  factory OpenAIMessage.fromJson(Map<String, dynamic> json) {
    return OpenAIMessage(
      role: json['role'],
      content: json['content'],
    );
  }

  static Map<String, dynamic> toJson(OpenAIMessage message) {
    return {
      'role': message.role,
      'content': message.content,
    };
  }
}
