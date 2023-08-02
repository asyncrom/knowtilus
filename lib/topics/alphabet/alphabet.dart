import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

const AL = [
  Double("Alfa", ".-"),
  Double("Bravo", "-..."),
  Double("Charlie", "-.-."),
  Double("Delta", "-.."),
  Double("Echo", "."),
  Double("Foxtrot", "..-."),
  Double("Golf", "--."),
  Double("Hotel", "...."),
  Double("India", ".."),
  Double("Juliett", ".---"),
  Double("Kilo", "-.-"),
  Double("Lima", ".-.."),
  Double("Mike", "--"),
  Double("November", "-."),
  Double("Oscar", "---"),
  Double("Papa", ".--."),
  Double("Quebec", "--.-"),
  Double("Romeo", ".-."),
  Double("Sierra", "...."),
  Double("Tango", "-"),
  Double("Uniform", "..-"),
  Double("Victor", "...-"),
  Double("Whiskey", ".--"),
  Double("X-ray", "-..-"),
  Double("Yankee", "-.--"),
  Double("Zulu", "--.."),
  Double("One", ".----"),
  Double("Two", "..---"),
  Double("Three", "...--"),
  Double("Four", "....-"),
  Double("Five", "....."),
  Double("Six", "-...."),
  Double("Seven", "--..."),
  Double("Eight", "---.."),
  Double("Nine", "----."),
  Double("Zero", "-----"),
];

const TWO = [
  TwoLettersSign('November', 'Charlie', 'al_distress'),
  TwoLettersSign('Echo', 'Delta', 'al_ok_distress'),
  TwoLettersSign('Kilo', 'Papa', 'al_go_harbour'),
  TwoLettersSign('Foxtrot', 'Oscar', 'al_next'),
  TwoLettersSign('Papa', 'Mike', 'al_follow'),
  TwoLettersSign('India', 'Romeo', 'al_away'),
  TwoLettersSign('Juliett', 'Golf', 'al_aground'),
  TwoLettersSign('November', 'Alfa', 'al_banned'),
  TwoLettersSign('Kilo', 'November', 'al_cant_tow'),
  TwoLettersSign('Juliett', 'Bravo', 'al_danger_exp'),
  TwoLettersSign('Victor', 'Echo', 'al_infect'),
  TwoLettersSign('Romeo', 'Sierra', 'al_forbid'),
  TwoLettersSign('Uniform', 'Whiskey', 'al_good'),

];

class Alphabet extends StatelessWidget {
  const Alphabet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.appBarTheme.backgroundColor,
        title: Text("${'alphabet'.tr} 🔤",
            style: const TextStyle(fontFamily: 'Emoji')),
        centerTitle: true,
      ),
      backgroundColor: Get.theme.backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: const [
              TopMessage(),
              ...AL,
              TwoLetters(),
              ...TWO,
            ],
          ),
        ),
      ),
    );
  }
}

class Double extends StatelessWidget {
  final String phonetic;
  final String morse;
  const Double(this.phonetic, this.morse, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.all(20.0),
      width: 700.0,
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 10.0),
              Expanded(
                child: Text(
                  phonetic,
                  style: Get.theme.textTheme.bodyText1,
                ),
              ),
              const SizedBox(width: 10.0),
              SvgPicture.asset(
                'assets/images/flags/ICS_$phonetic.svg',
                width: 50.0,
              ),
              const SizedBox(width: 20.0),
              Expanded(
                child: Text(
                  morse.replaceAll('-', '➖').replaceAll('.', '▪'),
                  style: const TextStyle(fontFamily: 'Emoji', fontSize: 13.0),
                ),
              ),
              const SizedBox(width: 3.0),
            ],
          ),
          const SizedBox(height: 10.0),
          Text(
            phonetic.tr,
            style: Get.theme.textTheme.bodyText1?.copyWith(fontSize: 10.0),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class TopMessage extends StatelessWidget {
  const TopMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepOrangeAccent,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.all(20.0),
      width: 700.0,
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 10.0),
              Expanded(
                child: Text(
                  'nato_alphabet'.tr,
                  style: Get.theme.textTheme.bodyText1,
                ),
              ),
              const SizedBox(width: 10.0),
              Expanded(
                  child: Text(
                'maritime_flags'.tr,
                style: Get.theme.textTheme.bodyText1,
              )),
              const SizedBox(width: 20.0),
              Expanded(
                child: Text(
                  'morse'.tr,
                  style: Get.theme.textTheme.bodyText1,
                ),
              ),
              const SizedBox(width: 3.0),
            ],
          ),
          const SizedBox(height: 10.0),
          Text(
            'flag_mean'.tr,
            style: Get.theme.textTheme.bodyText1?.copyWith(fontSize: 10.0),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

class TwoLetters extends StatelessWidget {
  const TwoLetters({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.deepOrangeAccent,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.all(20.0),
      width: 700.0,
      child: Text(
        'two_letters'.tr,
        textAlign: TextAlign.center,
        style: Get.theme.textTheme.bodyText1,
      ),
    );
  }
}

class TwoLettersSign extends StatelessWidget {
  final String firstFlag;
  final String secondFlag;
  final String meaning;

  const TwoLettersSign(this.firstFlag, this.secondFlag, this.meaning,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(20.0),
      ),
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.all(20.0),
      width: 700.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              SvgPicture.asset(
                'assets/images/flags/ICS_$firstFlag.svg',
                width: 50.0,
              ),
              const SizedBox(height: 5.0),
              SvgPicture.asset(
                'assets/images/flags/ICS_$secondFlag.svg',
                width: 50.0,
              ),
            ],
          ),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(child: Text(
            meaning.tr,
            style: Get.theme.textTheme.bodyText1,
            textAlign: TextAlign.center,
          ),)
        ],
      ),
    );
  }
}
