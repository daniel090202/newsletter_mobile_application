import 'package:get/get.dart';

import 'package:lottie/lottie.dart';

import 'package:flutter/material.dart';
import 'package:newsletter_mobile_application/controllers/text_to_speech_controller.dart';

import 'package:newsletter_mobile_application/models/newsletter_model.dart';

class NewsletterDetailsPage extends StatelessWidget {
  final NewsletterModel newsletter;

  const NewsletterDetailsPage({super.key, required this.newsletter});

  @override
  Widget build(BuildContext context) {
    TextToSpeechController textToSpeechController = Get.put(
      TextToSpeechController(),
    );

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_back_ios_new,
                            size: 14.0,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5.0),
                          Text("Back"),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.network(
                            newsletter.urlToImage ?? "",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        newsletter.title ?? "",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        "${newsletter.author ?? "Unknown"} - ${newsletter.publishedAt ?? ""}",
                        style: Theme.of(context).textTheme.labelSmall,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    CircleAvatar(
                      radius: 10.0,
                      backgroundColor: Colors.red,
                      child: Text(newsletter.author ?? "Unknown"),
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      newsletter.author ?? "Unknown",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                // >>> Voice bar.
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                  child: Row(
                    children: [
                      Obx(
                        () => textToSpeechController.isSpeaking.value
                            ? IconButton(
                                onPressed: () {
                                  textToSpeechController.stop();
                                },
                                icon: Icon(Icons.stop, size: 40.0),
                              )
                            : IconButton(
                                onPressed: () {
                                  textToSpeechController.speak(
                                    newsletter.description ?? "No description",
                                  );
                                },
                                icon: Icon(
                                  Icons.play_arrow_rounded,
                                  size: 40.0,
                                ),
                              ),
                      ),
                      Expanded(
                        child: Obx(
                          () => Lottie.asset(
                            "assets/animations/wave.json",
                            height: 60.0,
                            animate: textToSpeechController.isSpeaking.value,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                Row(
                  children: [
                    Flexible(
                      child: Text(newsletter.description ?? "No description"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
