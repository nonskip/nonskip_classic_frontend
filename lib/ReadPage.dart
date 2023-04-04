import 'package:custom_selectable_text/custom_selectable_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';




class ReadPage extends StatefulWidget {
  const ReadPage ({super.key, required this.title});
  


  final String title;

  @override
  State<ReadPage> createState() => _ReadPageState(); 
}


class _ReadPageState extends State<ReadPage> {
  

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
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          // The name of the chapter
          const Text("Chapter 1 - Two Realms",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          // this is where the contents are in
          CustomSelectableText("I begin my story with an event from the time when I was ten years old, attending the local grammar school in our small country town.",
          style: const TextStyle(
            fontSize: 20,
            ),
          items: [
            CustomSelectableTextItem(
              label: "무슨 뜻이야?",
              controlType: SelectionControlType.other,
              onPressed: (text) {
                Get.toNamed(
                  '/understand', 
                arguments: text
                );
              }
            ),
          ]
          ),
        ],
      ),
    );
  }
}
