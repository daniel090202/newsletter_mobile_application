import 'package:flutter/material.dart';

import 'package:newsletter_mobile_application/components/widgets/loading_container.dart';

class NewsletterVerticalLoadingCard extends StatelessWidget {
  const NewsletterVerticalLoadingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        children: [
          LoadingContainer(
            height: 20.0,
            width: MediaQuery.of(context).size.width,
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LoadingContainer(
                height: 10.0,
                width: MediaQuery.of(context).size.width / 4,
              ),
              LoadingContainer(
                width: MediaQuery.of(context).size.width / 5,
                height: 10,
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              LoadingContainer(
                height: 20.0,
                width: MediaQuery.of(context).size.width / 1.6,
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              LoadingContainer(
                height: 20.0,
                width: MediaQuery.of(context).size.width / 2 - 0.2,
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              LoadingContainer(width: 30.0, height: 30.0),
              const SizedBox(width: 10.0),
              LoadingContainer(
                height: 20.0,
                width: MediaQuery.of(context).size.width / 2,
              ),
            ],
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}
