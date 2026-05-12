import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:thkerny_app/model/azkar.dart';

class AzkarController extends GetxController {
  AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;
  List<Map<String, dynamic>> listAzkar = [];
  Future<List<Azkar?>> get getAzkar async {
    try {
      String readFile;
      readFile = await rootBundle.loadString("assets/json/adhkar.json");
      List temp = [];
      temp = jsonDecode(readFile);
      List<Azkar?> getAllAzkars = temp
          .map((azkar) => getAzkarList(azkar))
          .toList();
      return getAllAzkars;
    } catch (e) {
      return throw Exception("Error $e");
    }
  }

  void playAudio(String filename) async {
    try {
      await audioPlayer.play(AssetSource("audio/${basename(filename)}"));
      isPlaying = true;
      update();
      audioPlayer.onPlayerComplete.listen((event) {
        isPlaying = false;
        update();
      });
    } catch (e) {
      Get.snackbar("Error", "Failed to play audio: $e");
    }
  }

  @override
  void onClose() {
    audioPlayer.dispose();
    super.onClose();
  }
}
