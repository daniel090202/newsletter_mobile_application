import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NewsletterDetailsPage extends StatelessWidget {
  const NewsletterDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
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
                      child: Image.network(
                        "https://i.guim.co.uk/img/media/f5e46bdde33f0a884ae02daba71d06ac0ba945e9/2350_812_5074_4060/master/5074.jpg?width=700&dpr=2&s=none&crop=5%3A4",
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
