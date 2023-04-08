import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Message {
  Message({required this.text, required this.isSentByMe, required this.profileImageUrl});

  final bool isSentByMe;
  final String profileImageUrl;
  final String text;
}

class ReflectChatController extends GetxController {
  late String assistantImgUrl = "images/hesse.png";
  final messages = <Message>[].obs;

  @override
  Future<void> onReady() async {
    // start by  
    await Future.delayed(const Duration(seconds: 1));
    messages.add(Message(text: "첫번째 챕터를 다 읽었군! 축하해!", isSentByMe: false, profileImageUrl: assistantImgUrl));
    await Future.delayed(const Duration(seconds: 1));
    messages.add(Message(text: "첫번째 챕터는 선과 악으로 대비되는 두 세계에 대한 내용이라네. 첫번째 챕터는 어땠는가?", isSentByMe: false, profileImageUrl: assistantImgUrl));

  }
  chat(Message message, TextEditingController textEditngController) async {
    messages.add(message);
    textEditngController.clear();
    // call the Chat API and get the answer
    // get it and add it to messages
    await Future.delayed(const Duration(seconds: 1));
    messages.add(Message(text: "채팅 기능은 아직 구현되지 않았습니다.", isSentByMe: false, profileImageUrl: assistantImgUrl));
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
