import 'package:flutter/material.dart';
import 'package:get/get.dart';

const WINDS = [
  Tile(0, 'w_0', 0, 1, 0.0, 'b0.png', Colors.white30),
  Tile(1, 'w_1', 1, 3, 0.3, 'b1.png', Color(0xff075760)),
  Tile(2, 'w_2', 4, 6, 0.6, 'b2.png', Color(0xff086e59)),
  Tile(3, 'w_3', 7, 10, 1.0, 'b3.png', Color(0xff086e3a)),
  Tile(4, 'w_4', 11, 16, 1.5, 'b4.png', Color(0xff29860a)),
  Tile(5, 'w_5', 17, 21, 2.5, 'b5.png', Color(0xff74be0e)),
  Tile(6, 'w_6', 22, 27, 3.5, 'b6.png', Color(0xff6d8e0b)),
  Tile(7, 'w_7', 28, 33, 5.0, 'b7.png', Color(0xff868e0b)),
  Tile(8, 'w_8', 34, 40, 7.0, 'b8.png', Color(0xff8e740b)),
  Tile(9, 'w_9', 41, 47, 9.0, 'b9.png', Color(0xffbe720e)),
  Tile(10, 'w_10', 48, 55, 12.0, 'b10.png', Color(0xffbe4f0e)),
  Tile(11, 'w_11', 56, 63, 15, 'b11.png', Color(0xffbe210e)),
  Tile(12, 'w_12', 64, 100, 1.5, 'b12.png', Color(0xffaa0d24)),
];

class Wind extends StatelessWidget {
  const Wind({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.appBarTheme.backgroundColor,
        title: Text("${'wind'.tr} 💨",
            style: const TextStyle(fontFamily: 'Emoji')),
        centerTitle: true,
      ),
      backgroundColor: Get.theme.backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              BeaufortIntro(),
              ...WINDS,
            ],
          ),
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final int bf;
  final String description;
  final int minSpeed;
  final int maxSpeed;
  final double waveHeight;
  final String arrowPath;
  final Color color;
  const Tile(this.bf, this.description, this.minSpeed, this.maxSpeed,
      this.waveHeight, this.arrowPath, this.color,
      {super.key});

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
        child: Row(
          children: [
            Column(
              children: [
                Text(bf.toString(), style: const TextStyle(fontSize: 40.0)),
                Text("$minSpeed-$maxSpeed knots",
                    style: const TextStyle(fontSize: 12.0)),
                Text("$waveHeight meters",
                    style: const TextStyle(fontSize: 9.0)),
              ],
            ),
            const SizedBox(width: 10.0),
            Expanded(
                child: Text(description.tr,
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 20.0))),
            const SizedBox(width: 10.0),
            Image.asset('assets/images/arrows/$arrowPath', width: 40.0),
            const SizedBox(width: 10.0),
          ],
        ));
  }
}

class BeaufortIntro extends StatelessWidget {
  const BeaufortIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.deepOrangeAccent,
          borderRadius: BorderRadius.circular(20.0),
        ),
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(20.0),
        width: 700.0,
        child: Row(
          children: [
            SizedBox(
                width: 120,
                child: Column(
                  children: [
                    Text('bf_scale'.tr, style: const TextStyle(fontSize: 20.0)),
                    const SizedBox(height: 5.0,),
                    Text('minmax'.tr, style: const TextStyle(fontSize: 12.0)),
                    const SizedBox(height: 5.0,),
                    Text('wave_h'.tr, style: const TextStyle(fontSize: 9.0)),
                  ],
                )),
            const SizedBox(width: 10.0),
            Expanded(
                child: Text('bf_description'.tr,
                    style: const TextStyle(fontSize: 15.0))),
            const SizedBox(width: 10.0),
            Expanded(
                child: Text('bf_arrow'.tr,
                    style: const TextStyle(fontSize: 15.0))),
            const SizedBox(width: 10.0),
          ],
        ));
  }
}
