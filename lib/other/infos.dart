import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Infos extends StatelessWidget {
  const Infos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.appBarTheme.backgroundColor,
        title: Text("${'infos'.tr} ℹ️",
            style: const TextStyle(fontFamily: 'Emoji')),
        centerTitle: true,
      ),
      backgroundColor: Get.theme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(20.0),
              width: 700.0,
              child: Text('warning_dev'.tr),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(20.0),
              width: 700.0,
              child: Text('report_contact'.tr),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(20.0),
              width: 700.0,
              child: Text('source_code'.tr),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(20.0),
              width: 700.0,
              child: Text('chat_contact'.tr),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20.0),
              ),
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(20.0),
              width: 700.0,
              child: Text('todo'.tr),
            ),
          ],
        ),
      ),
    );
  }
}
