import 'package:get/get.dart';
import 'package:flutter/material.dart';

const LIGHTS = [
  BoatContainer('less_seven.png'),
  BoatContainer('motor_less_50.png'),
  BoatContainer('motor_more_50.png'),
  BoatContainer('only_sail.png'),
  BoatContainer('only_sail_more_50.png'),
  BoatContainer('sail_and_motor_less_50.png'),
  BoatContainer('sail_and_motor_more_50.png'),
  BoatContainer('anchored_less_50.png'),
  BoatContainer('anchored_more_200.png'),
  BoatContainer('command.png'),
  BoatContainer('no_command.png'),
  BoatContainer('difficult_maneuver.png'),
  BoatContainer('draught.png'),
  BoatContainer('fishing.png'),
  BoatContainer('trawling.png'),
  BoatContainer('obstruction.png'),
  BoatContainer('pilot.png'),
  BoatContainer('towing_less_200.png'),
  BoatContainer('towing_more_200.png'),
];

class Vessels extends StatelessWidget {
  const Vessels({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.appBarTheme.backgroundColor,
        title: Text("${'vessels'.tr} 🛥️",
            style: const TextStyle(fontFamily: 'Emoji')),
        centerTitle: true,
      ),
      backgroundColor: Get.theme.backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: LIGHTS,
          ),
        ),
      ),
    );
  }
}

class BoatContainer extends StatelessWidget {
  final String name;
  const BoatContainer(this.name, {super.key});

  Future<bool> isImageAsset(String addName, BuildContext context) async {
    try {
      final bundle = DefaultAssetBundle.of(context);
      await bundle.load('assets/images/lights/add/$name');
      return true;
    } catch (_) {
      return false;
    }
  }

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FutureBuilder<bool>(
                  future: isImageAsset(name, context),
                  builder: (context, snapshot) {
                    if (snapshot.hasData && snapshot.data == true) {
                      return Expanded(
                        child: Image.asset(
                          'assets/images/lights/add/$name',
                        ),
                      );
                    } else {
                      return const SizedBox(
                        width: 90.0,
                      );
                    }
                  }),
              Expanded(child: Image.asset('assets/images/lights/basic/$name')),
              const SizedBox(
                width: 20.0,
              ),
              Expanded(child: Image.asset('assets/images/lights/top/$name')),
            ],
          ),
          const SizedBox(height: 10.0),
          Text(
            name.tr,
            style: Get.theme.textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
