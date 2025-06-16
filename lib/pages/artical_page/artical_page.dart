import 'package:flutter/material.dart';

import 'package:newsletter_mobile_application/components/widgets/search.dart';
import 'package:newsletter_mobile_application/components/widgets/newsletter_for_you_card.dart';

class ArticalPage extends StatelessWidget {
  const ArticalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Search(),
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
