import 'package:flutter/material.dart';
import 'package:newsletter_mobile_application/components/widgets/newsletter_card.dart';

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
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hotest Newsletter",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Text("View all", style: Theme.of(context).textTheme.labelSmall),
              ],
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  NewsletterCard(),
                  NewsletterCard(),
                  NewsletterCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
