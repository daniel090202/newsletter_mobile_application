import 'package:flutter/material.dart';

class NewsletterVerticalCard extends StatelessWidget {
  final String tag;
  final String time;
  final String title;
  final String author;
  final String thumbnailImageURL;

  final VoidCallback? onTap;

  const NewsletterVerticalCard({
    super.key,
    this.tag = "",
    this.time = "",
    this.title = "",
    this.author = "",
    this.thumbnailImageURL = "",
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 280.0,
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
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                color: Theme.of(context).colorScheme.surface,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Image.network(thumbnailImageURL, fit: BoxFit.cover),
              ),
            ),
            SizedBox(height: 10.0),
            // >>> Newsletter's description:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(tag, style: Theme.of(context).textTheme.labelSmall),
                Text(time, style: Theme.of(context).textTheme.labelSmall),
              ],
            ),
            SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    title,
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
                Flexible(child: Text(author, maxLines: 1)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
