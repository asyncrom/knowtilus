import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WIP extends StatelessWidget {
  const WIP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.appBarTheme.backgroundColor,
        title: Text("${'wip'.tr} 🔨", style: const TextStyle(fontFamily: 'Emoji')),
        centerTitle: true,
      ),
      backgroundColor: Get.theme.backgroundColor,
      body: Container(
        color: Colors.blueGrey,
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(20.0),
        child: Text('for_later'.tr),
      ),
    );
  }
}
