import 'package:flutter/material.dart';
import 'package:get/get.dart';


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
  messages.add(Message(text: Get.arguments?['text'], isSentByMe: true, profileImageUrl: "images/user.png"));
  await Future.delayed(const Duration(seconds: 1));
  messages.add(Message(text: "설명 기능은 아직 구현되지 않았습니다.", isSentByMe: false, profileImageUrl: assistantImgUrl));

  } 

  chat(Message message, TextEditingController textEditngController) async {
    messages.add(message);
    textEditngController.clear();
    // call the Chat API and get the answer
    // get it and add it to messages
    await Future.delayed(const Duration(seconds: 1));
    messages.add(Message(text: "채팅 기능도 아직 구현되지 않았습니다.", isSentByMe: false, profileImageUrl: assistantImgUrl));
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
                      controller.chat(Message(text: text, isSentByMe: true, profileImageUrl: 'images/user.png'), textEditngController);
                    },
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () {
                    controller.chat(Message(text: textEditngController.text, isSentByMe: true, profileImageUrl: 'images/user.png'), textEditngController);
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
