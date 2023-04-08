import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'HomePage.dart';
import 'ReadPage.dart';
import 'ChatPage.dart';





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
        GetPage(name: '/', page: () => const HomePage(title: "Nonskip Classic")),
        GetPage(name: '/read', page: () => ReadPage()),
        GetPage(name: '/chat', page: () => ChatPage()),
      ],
    );
  }
}
