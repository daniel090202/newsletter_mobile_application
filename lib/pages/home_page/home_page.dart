import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:newsletter_mobile_application/components/widgets/newsletter_card.dart';
import 'package:newsletter_mobile_application/components/widgets/newsletter_for_you_card.dart';
import 'package:newsletter_mobile_application/pages/newsletter_details_page/newsletter_details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Newsletter Seekers",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hotest Newsletter",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    "View all",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    NewsletterCard(
                      time: "2 days ago",
                      tag: "Trending No 1",
                      author: "Nguyen Le Minh Khanh",
                      title: "Save Water, Save Life is a best news",
                      thumbnailImageURL:
                          "https://i.guim.co.uk/img/media/f5e46bdde33f0a884ae02daba71d06ac0ba945e9/2350_812_5074_4060/master/5074.jpg?width=700&dpr=2&s=none&crop=5%3A4",
                      onTap: () {
                        Get.to(NewsletterDetailsPage());
                      },
                    ),
                    NewsletterCard(
                      time: "2 days ago",
                      tag: "Trending No 1",
                      author: "Nguyen Le Minh Khanh",
                      title: "Save Water, Save Life is a best news",
                      thumbnailImageURL:
                          "https://i.guim.co.uk/img/media/f5e46bdde33f0a884ae02daba71d06ac0ba945e9/2350_812_5074_4060/master/5074.jpg?width=700&dpr=2&s=none&crop=5%3A4",
                      onTap: () {
                        Get.to(NewsletterDetailsPage());
                      },
                    ),
                    NewsletterCard(
                      time: "2 days ago",
                      tag: "Trending No 1",
                      author: "Nguyen Le Minh Khanh",
                      title: "Save Water, Save Life is a best news",
                      thumbnailImageURL:
                          "https://i.guim.co.uk/img/media/f5e46bdde33f0a884ae02daba71d06ac0ba945e9/2350_812_5074_4060/master/5074.jpg?width=700&dpr=2&s=none&crop=5%3A4",
                      onTap: () {
                        Get.to(NewsletterDetailsPage());
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Newsletter For You",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  Text(
                    "View all",
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                ],
              ),
              SizedBox(height: 20.0),
              Column(
                children: [
                  NewsletterForYouCard(
                    time: "2 days ago",
                    tag: "Trending No 1",
                    author: "Nguyen Le Minh Khanh",
                    title: "Save Water, Save Life is a best news",
                    thumbnailImageURL:
                        "https://i.guim.co.uk/img/media/f5e46bdde33f0a884ae02daba71d06ac0ba945e9/2350_812_5074_4060/master/5074.jpg?width=700&dpr=2&s=none&crop=5%3A4",
                  ),
                  NewsletterForYouCard(
                    time: "2 days ago",
                    tag: "Trending No 1",
                    author: "Nguyen Le Minh Khanh",
                    title: "Save Water, Save Life is a best news",
                    thumbnailImageURL:
                        "https://i.guim.co.uk/img/media/f5e46bdde33f0a884ae02daba71d06ac0ba945e9/2350_812_5074_4060/master/5074.jpg?width=700&dpr=2&s=none&crop=5%3A4",
                  ),
                  NewsletterForYouCard(
                    time: "2 days ago",
                    tag: "Trending No 1",
                    author: "Nguyen Le Minh Khanh",
                    title: "Save Water, Save Life is a best news",
                    thumbnailImageURL:
                        "https://i.guim.co.uk/img/media/f5e46bdde33f0a884ae02daba71d06ac0ba945e9/2350_812_5074_4060/master/5074.jpg?width=700&dpr=2&s=none&crop=5%3A4",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
