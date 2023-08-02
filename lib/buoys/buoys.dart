import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Buoys extends StatelessWidget {
  const Buoys({super.key});

  @override
  Widget build(BuildContext context) {
    final BuoysController c = Get.put(BuoysController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.appBarTheme.backgroundColor,
        title:
        Text("${'buoy'.tr} 🗼", style: const TextStyle(fontFamily: 'Emoji', fontSize: 15.0)),
        centerTitle: true,
      ),
      backgroundColor: Get.theme.backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              CardinalsList(),
              LateralList(),
              Tile(nameTrad: 'other_danger', imagePath: 'other_danger.png', lightPath: 'other_danger.gif'),
              Tile(nameTrad: 'other_safe', imagePath: 'other_safe.png', lightPath: 'other_safe_2.gif'),
              Tile(nameTrad: 'other_special', imagePath: 'other_special.png'),
              Tile(nameTrad: 'other_wreck', imagePath: 'other_wreck.png'),
            ],
          ),
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final String nameTrad;
  final String imagePath;
  final String? lightPath;
  final String? lightPath2;
  const Tile({super.key, required this.nameTrad, required this.imagePath, this.lightPath, this.lightPath2});

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
          Text(nameTrad.tr, style: Get.theme.textTheme.bodyText1?.copyWith(fontSize: 25.0),),
          const SizedBox(height: 10.0),
          Text('${nameTrad}_sense'.tr, style: Get.theme.textTheme.bodyText1?.copyWith(fontSize: 20.0, color: Colors.black), textAlign: TextAlign.center),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(child: Image.asset('assets/images/buoys/$imagePath')),
              Column(
                children: [
                  lightPath != null ? ClipOval(child: Image.asset('assets/images/buoys/$lightPath')) : const SizedBox.shrink(),
                  const SizedBox(height: 30.0),
                  lightPath2 != null ? ClipOval(child: Image.asset('assets/images/buoys/$lightPath2')) : const SizedBox.shrink(),
                ],
              )
            ],
          ),
          const SizedBox(height: 15.0),
          Text('${nameTrad}_info'.tr, style: Get.theme.textTheme.bodyText1?.copyWith(fontSize: 14.0, color: Colors.white), textAlign: TextAlign.left),
        ],
      ),
    );
  }
}

class CardinalsList extends StatelessWidget {
  const CardinalsList({super.key});

  @override
  Widget build(BuildContext context) {
    final BuoysController c = Get.find();
    return Obx(() => Container(
        decoration: BoxDecoration(
          color: const Color(0xff18414e),
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(5.0),
        width: 700.0,
        child: Column(
          children: [
            const SizedBox(height: 20.0),
            Text('cards'.tr, style:Get.theme.textTheme.bodyText1?.copyWith(fontSize: 30.0), textAlign: TextAlign.center),
            const SizedBox(height: 20.0),
            SvgPicture.asset('assets/images/buoys/card_diagram.svg', width: 400.0),
            if (c.cardExpanded.value) ...[
              const Tile(nameTrad: 'card_north', imagePath: 'card_north.png', lightPath: 'card_north.gif'),
              const Tile(nameTrad: 'card_east', imagePath: 'card_east.png', lightPath: 'card_east.gif'),
              const Tile(nameTrad: 'card_south', imagePath: 'card_south.png', lightPath: 'card_south.gif'),
              const Tile(nameTrad: 'card_west', imagePath: 'card_west.png', lightPath: 'card_west.gif'),
            ],
            if (c.cardExpanded.value)
              ElevatedButton(
                  onPressed: () => c.cardExpanded.value = false,
                  child: Text('see_less'.tr)
              ) else ElevatedButton(
                onPressed: () => c.cardExpanded.value = true,
                child: Text('see_more'.tr)
            ),
          ],
        )
    ));
  }
}

class LateralList extends StatelessWidget {
  const LateralList({super.key});

  @override
  Widget build(BuildContext context) {
    final BuoysController c = Get.find();
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
            Text('lat'.tr, style:Get.theme.textTheme.bodyText1?.copyWith(fontSize: 30.0), textAlign: TextAlign.center),
            const SizedBox(height: 20.0),
            Text('a_b_exp'.tr, style:Get.theme.textTheme.bodyText1?.copyWith(fontSize: 15.0), textAlign: TextAlign.left),
            const SizedBox(height: 20.0),
            Image.asset('assets/images/buoys/regions.png'),
            if (c.latExpanded.value) ...[
              const SizedBox(height: 20.0),
              Text('b_direction'.tr, style:Get.theme.textTheme.bodyText1?.copyWith(fontSize: 15.0), textAlign: TextAlign.left),
              const Tile(nameTrad: 'side_port', imagePath: 'side_port.png'),
              const Tile(nameTrad: 'side_starboard', imagePath: 'side_starboard.png'),
              const Tile(nameTrad: 'pref_port', imagePath: 'pref_port.png'),
              const Tile(nameTrad: 'pref_starboard', imagePath: 'pref_starboard.png'),
            ],
            const SizedBox(height: 20.0),
            if (c.latExpanded.value)
              ElevatedButton(
                  onPressed: () => c.latExpanded.value = false,
                  child: Text('see_less'.tr)
              ) else ElevatedButton(
                onPressed: () => c.latExpanded.value = true,
                child: Text('see_more_a'.tr)
            ),
          ],
        )
    ));
  }
}

class BuoysController extends GetxController {
  var cardExpanded = false.obs;
  var latExpanded = false.obs;
}


