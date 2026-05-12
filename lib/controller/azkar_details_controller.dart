import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';

class AzkarDetailsController extends GetxController {
  bool isPlaying = false;
  AudioPlayer audioPlayer = AudioPlayer();
  late PageController pageController;
  List data = [];
  int pageIndictor = 0;
  bool isLastPage = false;
  void onChangedPage(int index) {
    pageIndictor = index;
    update();
    if (pageIndictor == data.length - 1) {
      isLastPage = true;
      update();
    }
  }

  void nextPage() {
    update();
    if (pageIndictor < data.length - 1) {
      pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  void stop() {
    isPlaying = false;
    update();
    audioPlayer.stop();
  }

  void playAudioWithRepeat(String filename, int count) {
    if (isPlaying) {
      stop();
    } else {
      playAudio(filename);
      audioPlayer.onPlayerComplete.listen((event) async {
        isPlaying = false;
        update();
        if (pageIndictor < data.length - 1) {
          nextPage();
          await Future.delayed(Duration(milliseconds: 500));
          playAudio(data[pageIndictor]['audio']);
        } else {
          stop();
        }
      });
    }
  }

  void previousPage() {
    update();
    if (pageIndictor == 0) {
      isLastPage = false;
      update();
    } else {
      pageIndictor--;
      update();
      pageController.animateToPage(
        pageIndictor,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  void playAudio(String filename) async {
    try {
      await audioPlayer.play(AssetSource("audio/${basename(filename)}"));
      isPlaying = true;
      update();
    } catch (e) {
      Get.snackbar("Error", "Failed to play audio: $e");
    }
  }

  @override
  void onInit() {
    data = Get.arguments;
    pageController = PageController();
    super.onInit();
  }

  @override
  void onClose() {
    audioPlayer.dispose();
    super.onClose();
  }
}
