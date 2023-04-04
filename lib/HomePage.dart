// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState(); 
}


class _HomePageState extends State<HomePage> {
  
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => Get.toNamed('/read'),
          child: const Text(
            "Demian 읽기",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
            ),
        ),
      ),
    );
  }
}
