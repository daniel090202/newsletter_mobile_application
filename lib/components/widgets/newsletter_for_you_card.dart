import 'package:flutter/material.dart';

class NewsletterForYouCard extends StatelessWidget {
  final String tag;
  final String time;
  final String title;
  final String author;
  final String thumbnailImageURL;

  const NewsletterForYouCard({
    super.key,
    this.tag = "",
    this.time = "",
    this.title = "",
    this.author = "",
    this.thumbnailImageURL = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.0,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.only(bottom: 15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        children: [
          Container(
            width: 120.0,
            height: 150.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Theme.of(context).colorScheme.surface,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.network(thumbnailImageURL, fit: BoxFit.cover),
            ),
          ),
          SizedBox(width: 10.0),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        radius: 10.0,
                        backgroundColor: Theme.of(context).colorScheme.primary,
                      ),
                      SizedBox(width: 10.0),
                      Text(author),
                    ],
                  ),
                  SizedBox(height: 10.0),
                  Text(title, maxLines: 2),
                  Text(time, style: Theme.of(context).textTheme.labelSmall),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
