import 'package:flutter/material.dart';

import 'package:newsletter_mobile_application/components/widgets/loading_container.dart';

class NewsletterHorizontalLoadingCard extends StatelessWidget {
  const NewsletterHorizontalLoadingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        children: [
          LoadingContainer(width: 120.0, height: 120.0),
          SizedBox(width: 10.0),
          // Expanded(
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Row(
          //         children: [
          //           LoadingContainer(width: 30.0, height: 30.0),
          //           SizedBox(width: 10.0),
          //           LoadingContainer(
          //             height: 20.0,
          //             width: MediaQuery.of(context).size.width / 2.3,
          //           ),
          //         ],
          //       ),
          //       SizedBox(height: 15.0),
          //       LoadingContainer(
          //         height: 15.0,
          //         width: MediaQuery.of(context).size.width / 1.6,
          //       ),
          //       SizedBox(height: 10.0),
          //       LoadingContainer(
          //         height: 15.0,
          //         width: MediaQuery.of(context).size.width / 1.8,
          //       ),
          //       SizedBox(height: 15.0),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           LoadingContainer(
          //             height: 15.0,
          //             width: MediaQuery.of(context).size.width / 5.0,
          //           ),
          //           LoadingContainer(
          //             height: 15.0,
          //             width: MediaQuery.of(context).size.width / 5.0,
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
