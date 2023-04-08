import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Message {
  Message({required this.text, required this.isSentByMe, required this.profileImageUrl});

  final bool isSentByMe;
  final String profileImageUrl;
  final String text;
}

class ChatController extends GetxController {
  final messages = <Message>[].obs;
  late String assistantImgUrl;

  ChatController() {
    if (Get.previousRoute.toString() == "/read") {
      assistantImgUrl = "images/chatgpt.png";
    }
    else {
      assistantImgUrl = "images/hesse.png";
    }
  }
  
  @override
  void onReady() {
    // start by asking the selected text
    messages.add(Message(text: Get.arguments.toString(), isSentByMe: true, profileImageUrl: "images/user.png"));
     Future.delayed(const Duration(seconds: 2), () {
      messages.add(Message(text: "I am Hesse", isSentByMe: false, profileImageUrl: assistantImgUrl));
    });
  }

  explain(String selectedText, TextEditingController textEditngController) {
    messages.add(Message(text: selectedText, isSentByMe: true, profileImageUrl: "images/user.png"));
    // call the explain API and get the answer
    // get it and add it to messages
        Future.delayed(const Duration(seconds: 2), () {
      messages.add(Message(text: "I am Hesse", isSentByMe: false, profileImageUrl: assistantImgUrl));
    });
  }

  chat(Message message, TextEditingController textEditngController) {
    messages.add(message);
    textEditngController.clear();
    // call the Chat API and get the answer
    // get it and add it to messages
    Future.delayed(const Duration(seconds: 2), () {
      messages.add(Message(text: "I am Hesse", isSentByMe: false, profileImageUrl: assistantImgUrl));
    });
  }
}
class ChatPage extends StatelessWidget {
  ChatPage({super.key});

  final ChatController controller = Get.put(ChatController());
  final textEditngController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.arguments.toString())),
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
                      hintText: '더 궁금한게 있나요?',
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
        ],
      ),
    );
  }
}
