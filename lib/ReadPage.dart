import 'package:custom_selectable_text/custom_selectable_text.dart';
import 'package:flutter/material.dart';
import 'dart:html' as html;




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
    // Prevent default event handler
    // https://stackoverflow.com/a/66118433
    // html.document.onContextMenu.listen((event) => event.preventDefault());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: const [
            // The name of the chapter
            Text("Chapter 1 - Two Realms",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            // this is where the contents are in
            SelectableText("I begin my story with an event from the time when I was ten years old, attending the local grammar school in our small country town.",
            style: TextStyle(
              fontSize: 20,
              ),
            toolbarOptions: ToolbarOptions(
              copy: true,
              selectAll: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
