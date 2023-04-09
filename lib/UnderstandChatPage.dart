import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'OpenAIDialogue.dart';
import 'OpenAIMessage.dart';
import 'RESTService.dart';


class Message {
  Message({required this.text, required this.isSentByMe, required this.profileImageUrl});

  final bool isSentByMe;
  final String profileImageUrl;
  final String text;
}

class UnderstandChatController extends GetxController {
  late String assistantImgUrl = "images/chatgpt.png";
  final messages = <Message>[].obs;

  @override
  Future<void> onReady() async {
  // start by asking the selected text
  messages.add(Message(text: Get.arguments?['selectedText'], isSentByMe: true, profileImageUrl: "images/user.png"));
  OpenAIDialogue dialogue = await RESTService.explain(Get.arguments?['context'], Get.arguments?['selectedText']);
  messages.add(Message(text: dialogue.messages[dialogue.messages.length - 1].content, isSentByMe: false, profileImageUrl: assistantImgUrl));
  } 

  sendMessage(Message message, TextEditingController textEditngController) async {
    messages.add(message);
    textEditngController.clear();
    OpenAIDialogue dialogue = await RESTService.chat(OpenAIDialogue(messages: List<OpenAIMessage>.from(messages.map((x) => OpenAIMessage(role: "user", content: x.text)))));
    messages.add(Message(text: dialogue.messages[dialogue.messages.length - 1].content, isSentByMe: false, profileImageUrl: assistantImgUrl));
  }
}

class UnderstandChatPage extends StatelessWidget {
  UnderstandChatPage({super.key});

  final UnderstandChatController controller = Get.put(UnderstandChatController());
  final textEditngController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nonskip Classic")),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => ListView.builder(
                      itemCount: controller.messages.length,
                      itemBuilder: (BuildContext context, int index) {
                      final message = controller.messages[index];
                      return Row(
                        mainAxisAlignment: message.isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
                      children: [
                        if (!message.isSentByMe)
                        CircleAvatar(
                          backgroundImage: AssetImage(message.profileImageUrl)
                          ),
                        Container(
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.all(8.0),
          constraints: const BoxConstraints(maxWidth: 250),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            color: message.isSentByMe ? Colors.blue : Colors.grey[300],
          ),
          child: Text(
            message.text,
            style: TextStyle(
              color: message.isSentByMe ? Colors.white : Colors.black,
            ),
          ),
        ),
        if (message.isSentByMe)
          CircleAvatar(
            backgroundImage: AssetImage(message.profileImageUrl),
          ),
      ],
    );
  },
),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: const InputDecoration(
                      hintText: 'Type a message...',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                                      width: 3,
                                      color: Colors.grey
                        ), 
                      ),
                    ),
                    controller: textEditngController,
                    onSubmitted: (String text) {
                      controller.sendMessage(Message(text: text, isSentByMe: true, profileImageUrl: 'images/user.png'), textEditngController);
                    },
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    controller.sendMessage(Message(text: textEditngController.text, isSentByMe: true, profileImageUrl: 'images/user.png'), textEditngController);
                  })
              ], // children
            ),
          ),
          const SizedBox(height: 10.0)
        ],
      ),
    );
  }
}
