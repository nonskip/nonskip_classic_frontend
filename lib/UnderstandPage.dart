import 'package:custom_selectable_text/custom_selectable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';




class UnderstandPage extends StatefulWidget {
  const UnderstandPage ({super.key, required this.title});
  


  final String title;

  @override
  State<UnderstandPage> createState() => _UnderstandPageState(); 
}


class _UnderstandPageState extends State<UnderstandPage> {
  

  @override
  void initState() {
    super.initState();
    // this is available only on flutter upto 2.9.0
    BrowserContextMenu.disableContextMenu();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.arguments.toString()),
      ),
      body: Column(
        children: [
         Text("채팅방이 여기에 보여야 함")
        ],
      ),
    );
  }
}
