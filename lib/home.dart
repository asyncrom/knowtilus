import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowtilus/other/infos.dart';
import 'package:knowtilus/other/wip.dart';
import 'package:knowtilus/topics/alphabet/alphabet.dart';
import 'package:knowtilus/topics/buoys/buoys.dart';
import 'package:knowtilus/topics/rightofway/rightofway.dart';
import 'package:knowtilus/topics/sounds/sounds.dart';
import 'package:knowtilus/topics/vessels/vessels.dart';
import 'package:knowtilus/topics/vhf/vhf.dart';
import 'package:knowtilus/topics/wind/wind.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Get.theme.backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 80.0),
              const Text("⚓", style: TextStyle(fontFamily: 'Emoji', fontSize: 70.0)),
              const SizedBox(height: 20.0),
              HomeButton(name: 'vessels'.tr, color: Colors.amber, emoji: "🛥️", onTap: () => {Get.to(() => const Vessels())}),
              HomeButton(name: 'alphabet'.tr, color: Colors.pink.shade300, emoji: "🔤", onTap: () => {Get.to(() => const Alphabet())}),
              HomeButton(name: 'vhf'.tr, color: Colors.red.shade200, emoji: "📻", onTap: () => {Get.to(() => const VHF())}),
              HomeButton(name: 'wind'.tr, color: Colors.purpleAccent, emoji: "💨", onTap: () => {Get.to(() => const Wind())}),
              HomeButton(name: 'buoy'.tr, color: Colors.deepPurpleAccent, emoji: "🗼", onTap: () => {Get.to(() => const Buoys())}),
              HomeButton(name: 'sound_signals'.tr, color: Colors.blue, emoji: "📯", onTap: ()=> {Get.to(() => const SoundsSignals())}),
              //HomeButton(name: 'knots'.tr, color: Colors.lime, emoji: "🪢", onTap: () => {Get.to(() => const WIP())}),
              HomeButton(name: 'rightsofway'.tr, color: Colors.teal, emoji: "🚢", onTap: () => {Get.to(() => const RightOfWay())}),
              //HomeButton(name: 'report'.tr, color: Colors.white10, emoji: "🚨", onTap: () => {}),
              HomeButton(name: 'infos'.tr, color: Colors.white10, emoji: "ℹ️", onTap: () => {Get.to(() => const Infos())}),
              const SizedBox(height: 100.0),
              const Text("Made with ❤️ by Asyncrom 👨🏼‍💻",textAlign: TextAlign.left, style: TextStyle(fontSize: 10.0)),
              const SizedBox(height: 100.0),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeButton extends StatelessWidget {
  final String emoji;
  final String name;
  final Color color;
  final Function onTap;

  late final Text emojiText;
  late final Text nameText;

  HomeButton({super.key, required this.name, required this.color, required this.emoji, required this.onTap}) {
    emojiText = Text(emoji, style: const TextStyle(fontFamily: 'Emoji', fontSize: 40.0));
    nameText = Text(name, style: const TextStyle(fontSize: 15.0, color: Colors.black),);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {onTap.call()},
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 7.0, horizontal: 40.0),
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: color
        ),
        child: Column(
          children: [
            Center(child: emojiText),
            const SizedBox(height: 5.0),
            Center(child: nameText),
          ],
        ),
      ),
    );
  }
}
