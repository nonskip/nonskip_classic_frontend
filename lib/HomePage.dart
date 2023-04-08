import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeController extends GetxController {

}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nonskip Classic"),
      ),
      body: Center(
        child: IconButton(
          onPressed: () => Get.toNamed('/coffeechat'),
          icon: Image.asset("images/demian.png"), 
          iconSize: 450,
        ),
      ),
    );
  }
}
