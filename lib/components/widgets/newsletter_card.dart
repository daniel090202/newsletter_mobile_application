import 'package:flutter/material.dart';

class NewsletterCard extends StatelessWidget {
  const NewsletterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      padding: EdgeInsets.all(15.0),
      margin: EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        children: [
          // >>> Newsletter thumbnail image:
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Theme.of(context).colorScheme.surface,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(
                "https://i.guim.co.uk/img/media/f5e46bdde33f0a884ae02daba71d06ac0ba945e9/2350_812_5074_4060/master/5074.jpg?width=700&dpr=2&s=none&crop=5%3A4",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 10.0),
          // >>> Newsletter's description:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Trending No.1",
                style: Theme.of(context).textTheme.labelSmall,
              ),
              Text("2 days ago", style: Theme.of(context).textTheme.labelSmall),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Text(
                  "Save Water, Save Life is a best news",
                  maxLines: 2,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              CircleAvatar(
                radius: 10.0,
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              SizedBox(width: 10.0),
              Text("Nguyen Le Minh Khanh"),
            ],
          ),
        ],
      ),
    );
  }
}
