import 'package:flutter/material.dart';
import 'package:get/get.dart';

const SOUNDS = [
  Double('altering_stb', '.'),
  Double('altering_prt', '..'),
  Double('altering_astern', '...'),
  Double('pilot_vessel', '....'),
  Double('doubt_about', '.....'),
  Double('diver_down_snd', '.-'),
  Double('here_i_snd', '-'),
  Double('restricted_snd', '-..'),
  Double('last_in_tow', '-...'),
  Double('vessel_stopped', '--'),
  Double('ovrtk_stb', '--.'),
  Double('ovrtk_prt', '--..'),
  Double('agree_snd', '-.-.'),
];
class SoundsSignals extends StatelessWidget {
  const SoundsSignals({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.appBarTheme.backgroundColor,
        title: Text("${'sound_signals'.tr} 📯", style: const TextStyle(fontFamily: 'Emoji')),
        centerTitle: true,
      ),
      backgroundColor: Get.theme.backgroundColor,
      body: Center(
        child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    margin: const EdgeInsets.all(20.0),
                    padding: const EdgeInsets.all(20.0),
                    width: 700.0,
                    child: Text('what_sounds'.tr, style: const TextStyle(fontFamily: 'Emoji', fontSize: 15.0)),
                  ),
                  ...SOUNDS
                ],
              ),
            ),
        ),
    );
  }
}

class Double extends StatelessWidget {
  final String message;
  final String horns;
  const Double(this.message, this.horns, {super.key});

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
          const SizedBox(height: 10.0),
          Text(
            horns.replaceAll('-', '➖').replaceAll('.', '▪'),
            style: const TextStyle(fontFamily: 'Emoji', fontSize: 20.0),
          )
        ],
      ),
    );
  }
}
