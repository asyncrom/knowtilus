import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RightOfWay extends StatelessWidget {
  const RightOfWay({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(RoWController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.appBarTheme.backgroundColor,
        title: Text("${'rightsofway'.tr} 🚢", style: const TextStyle(fontFamily: 'Emoji')),
        centerTitle: true,
      ),
      backgroundColor: Get.theme.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            PrivilegeList(),
          ],
        ),
      ),
    );
  }
}

class RoWController extends GetxController {
  var ordPrivilegeExpanded = false.obs;
  var motorExpanded = false.obs;
  var sailExpanded = false.obs;
}

class PrivilegeList extends StatelessWidget {
  const PrivilegeList({super.key});

  @override
  Widget build(BuildContext context) {
    final RoWController c = Get.find();
    return Obx(() => Container(
        decoration: BoxDecoration(
          color: const Color(0xff18414e),
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(20.0),
        width: 700.0,
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            const Tile('give_way', Colors.blueGrey),
            const Tile('stand_on', Colors.blueGrey),
            if (c.ordPrivilegeExpanded.value) ...[
              const SizedBox(height: 20.0),
              Text('high_is_pr'.tr, style:Get.theme.textTheme.bodyText1?.copyWith(fontSize: 25.0), textAlign: TextAlign.center),
              const Tile('pr_2', Color(0xff6d8e0b)),
              const Tile('pr_3', Color(0xff868e0b)),
              const Tile('pr_4', Color(0xff8e740b)),
              const Tile('pr_5', Color(0xffbe720e)),
              const Tile('pr_6', Color(0xffbe4f0e)),
              const Tile('pr_7', Color(0xffbe210e)),
            ],
            const SizedBox(height: 20.0),
            if (c.ordPrivilegeExpanded.value)
              ElevatedButton(
                  onPressed: () => c.ordPrivilegeExpanded.value = false,
                  child: Text('see_less'.tr)
              ) else ElevatedButton(
                onPressed: () => c.ordPrivilegeExpanded.value = true,
                child: Text('ordof'.tr)
            ),

            if (c.motorExpanded.value) ... [
              const SizedBox(height: 20.0),
              Text('same_motor'.tr, style:Get.theme.textTheme.bodyText1?.copyWith(fontSize: 25.0), textAlign: TextAlign.center),
              const TileImage('sitm_1', 'motor1.png'),
              const TileImage('sitm_2', 'motor2.png'),
              const TileImage('sitm_3', 'motor3.png'),
            ],
            const SizedBox(height: 20.0),
            if (c.motorExpanded.value)
              ElevatedButton(
                  onPressed: () => c.motorExpanded.value = false,
                  child: Text('see_less'.tr)
              ) else ElevatedButton(
                onPressed: () => c.motorExpanded.value = true,
                child: Text('ordmotor'.tr)
            ),

            if (c.sailExpanded.value) ... [
              const SizedBox(height: 20.0),
              Text('same_sail'.tr, style:Get.theme.textTheme.bodyText1?.copyWith(fontSize: 25.0), textAlign: TextAlign.center),
              const TileImage('sits_1', 'sail1.png'),
              const TileImage('sits_2', 'sail2.png'),
              const TileImage('sits_3', 'sail3.png'),
            ],
            const SizedBox(height: 20.0),
            if (c.sailExpanded.value)
              ElevatedButton(
                  onPressed: () => c.sailExpanded.value = false,
                  child: Text('see_less'.tr)
              ) else ElevatedButton(
                onPressed: () => c.sailExpanded.value = true,
                child: Text('ordsail'.tr)
            ),
          ],
        )
    ));
  }
}

class Tile extends StatelessWidget {
  final String message;
  final Color color;
  const Tile(this.message, this.color, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(20.0),
        width: 700.0,
        child: Text(
            message.tr,
            style: Get.theme.textTheme.bodyText1,
        ),
    );
  }
}

class TileImage extends StatelessWidget {
  final String message;
  final String imagePath;
  const TileImage(this.message, this.imagePath, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(20.0),
      ),
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(20.0),
      width: 700.0,
      child: Column(
        children: [
          Text(
            message.tr,
            style: Get.theme.textTheme.bodyText1,
          ),
          Image.asset('assets/images/boat/$imagePath')
        ],
      ),
    );
  }
}
