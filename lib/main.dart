import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'CoffeeChatPage.dart';
import 'HomePage.dart';
import 'ReadPage.dart';
import 'ReflectChatPage.dart';
import 'UnderstandChatPage.dart';





void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Nonskip Classic',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/read', page: () => ReadPage()),
        GetPage(name: '/coffeechat', page: () => CoffeeChatPage()),
        GetPage(name: '/understandchat', page: () => UnderstandChatPage()),
        GetPage(name: '/reflectchat', page: () => ReflectChatPage()),
      ],
    );
  }
}
