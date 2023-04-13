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

class ReflectChatController extends GetxController {
  late String assistantImgUrl = "images/hesse.png";
  late OpenAIMessage systemMessage;
  final messages = <Message>[].obs;

  @override
  onReady() async {
    // get the first response from the API
    messages.add(Message(text: "생각 중...",  isSentByMe: false, profileImageUrl: assistantImgUrl));
    OpenAIDialogue dialogue =  await RESTService.reflect(); 
    systemMessage = dialogue.messages[0];
    // add the response to the system prompt to the messages
    messages.add(Message(text: dialogue.messages[1].content, isSentByMe: false, profileImageUrl: assistantImgUrl));
  }

  sendMessage(Message message, TextEditingController textEditngController) async {
    messages.add(message);
    textEditngController.clear();
    // call the Chat API and get the answer
    // get it and add it to messages
    OpenAIDialogue dialogue = OpenAIDialogue(messages: List<OpenAIMessage>.from(messages.map((x) =>
     // role = "user" if sentbyMe, else role = "assistant"
     OpenAIMessage(role: x.isSentByMe ? "user" : "assistant", content: x.text))));
    dialogue.messages.insert(0, systemMessage);
    dialogue = await RESTService.chat(dialogue);
    messages.add(Message(text: dialogue.messages[dialogue.messages.length - 1].content, isSentByMe: false, profileImageUrl: assistantImgUrl));
  }
}
class ReflectChatPage extends StatelessWidget {
  ReflectChatPage({super.key});

  final ReflectChatController controller = Get.put(ReflectChatController());
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
