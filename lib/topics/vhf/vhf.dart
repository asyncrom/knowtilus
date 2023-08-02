import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VHF extends StatelessWidget {
  const VHF({super.key});

  @override
  Widget build(BuildContext context) {
    final VHFController c = Get.put(VHFController());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Get.theme.appBarTheme.backgroundColor,
        title:
            Text("${'vhf'.tr} 📻", style: const TextStyle(fontFamily: 'Emoji')),
        centerTitle: true,
      ),
      backgroundColor: Get.theme.backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff18414e),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  margin: const EdgeInsets.all(20.0),
                  padding: const EdgeInsets.all(5.0),
                  width: 700.0,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('vhf_can'.tr, style: const TextStyle(fontSize: 20.0), textAlign: TextAlign.center,),
                      ),
                      Obx(() => ChanList(c.chanExpanded.value)),
                    ],
                  )
              ),
              Container(
                  decoration: BoxDecoration(
                    color: const Color(0xff18414e),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  margin: const EdgeInsets.all(20.0),
                  padding: const EdgeInsets.all(5.0),
                  width: 700.0,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('vhf_messages'.tr, style: const TextStyle(fontSize: 20.0), textAlign: TextAlign.center,),
                      ),
                      Obx(() => DistressList(c.distressExpanded.value)),
                      Obx(() => UrgencyList(c.urgencyExpanded.value)),
                    ],
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tile extends StatelessWidget {
  final String emoji;
  final String channel;
  final String description;
  final Color color;
  const Tile(this.emoji, this.channel, this.description, this.color,
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
            Text(channel, style: const TextStyle(fontSize: 30.0)),
            const SizedBox(width: 10.0),
            Text(emoji,
                style: const TextStyle(fontSize: 20.0, fontFamily: 'Emoji')),
            const SizedBox(width: 10.0),
            Expanded(
                child: Text(description.tr,
                    style: const TextStyle(fontSize: 15.0))),
          ],
        ));
  }
}

class VHFController extends GetxController {
  var chanExpanded = false.obs;
  var distressExpanded = false.obs;
  var urgencyExpanded = false.obs;
}

class ChanList extends StatelessWidget {
  final bool isExpanded;
  const ChanList(this.isExpanded, {super.key});

  @override
  Widget build(BuildContext context) {
    final VHFController c = Get.find();
    if (!isExpanded) {
      return Column(
        children: [
          const Tile('🌍', '16', 'chan_16', Colors.red),
          ElevatedButton(
              onPressed: () => c.chanExpanded.value = true,
              child: Text('see_more'.tr)
          ),
          const SizedBox(height: 10.0),
        ],
      );
    } else {
      return Column(
        children: [
          const Tile('🌍', '16', 'chan_16', Colors.red),
          const Tile('🌍', '70', 'chan_70', Colors.blueGrey),
          const Tile('🇪🇺', '6, 8, 72, 77', 'chan_6', Colors.blueGrey),
          const Tile('🇪🇺', '9', 'chan_9', Colors.blueGrey),
          const Tile('🇪🇺', '12', 'chan_12', Colors.blueGrey),
          const Tile('🇪🇺', '10', 'chan_10', Colors.blueGrey),
          const Tile('🇫🇷', '67, 68', 'chan_67', Colors.blueGrey),
          const Tile('🇫🇷', '63, 64', 'chan_63', Colors.blueGrey),
          const Tile('🇫🇷', '79, 80', 'chan_79', Colors.blueGrey),
          ElevatedButton(
              onPressed: () => c.chanExpanded.value = false,
              child: Text('see_less'.tr)
          ),
          const SizedBox(height: 10.0),
        ],
      );
    }
  }
}

class DistressList extends StatelessWidget {
  final bool isExpanded;
  const DistressList(this.isExpanded, {super.key});

  @override
  Widget build(BuildContext context) {
    final VHFController c = Get.find();
    if (!isExpanded) {
      return GestureDetector(
        onTap: () => c.distressExpanded.value = true,
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(20.0),
            width: 700.0,
            child: Center(child: Text('see_more_mayday'.tr))),
      );
    } else {
      return Container(
          decoration: BoxDecoration(
            color: Colors.white30,
            borderRadius: BorderRadius.circular(20.0),
          ),
          margin: const EdgeInsets.all(20.0),
          padding: const EdgeInsets.all(20.0),
          width: 700.0,
          child: Text('mayday_message'.tr));
    }
  }
}

class UrgencyList extends StatelessWidget {
  final bool isExpanded;
  const UrgencyList(this.isExpanded, {super.key});

  @override
  Widget build(BuildContext context) {
    final VHFController c = Get.find();
    if (!isExpanded) {
      return GestureDetector(
        onTap: () => c.urgencyExpanded.value = true,
        child: Container(
            decoration: BoxDecoration(
              color: Colors.white30,
              borderRadius: BorderRadius.circular(20.0),
            ),
            margin: const EdgeInsets.all(20.0),
            padding: const EdgeInsets.all(20.0),
            width: 700.0,
            child: Center(child: Text('see_more_panpan'.tr))),
      );
    } else {
      return Container(
          decoration: BoxDecoration(
            color: Colors.white30,
            borderRadius: BorderRadius.circular(20.0),
          ),
          margin: const EdgeInsets.all(20.0),
          padding: const EdgeInsets.all(20.0),
          width: 700.0,
          child: Text('panpan_message'.tr));
    }
  }
}