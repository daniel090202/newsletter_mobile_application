import 'package:get/get.dart';

import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeechController extends GetxController {
  FlutterTts flutterTts = FlutterTts();

  RxBool isSpeaking = false.obs;

  Future<void> speak(String text) async {
    isSpeaking.value = true;

    await flutterTts.setLanguage("en-US");
    await flutterTts.setPitch(1);
    await flutterTts.setSpeechRate(1.0);
    await flutterTts.speak(text);

    isSpeaking.value = false;
  }

  void stop() async {
    await flutterTts.stop();

    isSpeaking.value = false;
  }
}
