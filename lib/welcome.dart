import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.backgroundColor,
      body: Center(child:
      SingleChildScrollView(
        padding: const EdgeInsets.only(top: 15, left: 40, right: 40),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            Text('important_notice_title'.tr, textAlign: TextAlign.center, style: Get.theme.textTheme.headline1,),
            const SizedBox(height: 20,),
            Text('important_notice'.tr, textAlign: TextAlign.justify, style: Get.theme.textTheme.bodyText1,),
            const SizedBox(height: 30,),
            ElevatedButton(onPressed: () => {Get.off(() => const Home())}, style: Get.theme.elevatedButtonTheme.style, child: const Text("👌", style: TextStyle( fontFamily: 'Emoji', fontSize: 20.0))),
            const SizedBox(height: 50,),
          ],
        ),
      )
      ),
    );
  }
}
