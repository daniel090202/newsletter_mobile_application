import 'package:get/get.dart';

import 'package:flutter/material.dart';
import 'package:newsletter_mobile_application/components/widgets/newsletter_horizontal_loading_card.dart';
import 'package:newsletter_mobile_application/components/widgets/newsletter_vertical_loading_card.dart';

import 'package:newsletter_mobile_application/controllers/newsletter_controller.dart';
import 'package:newsletter_mobile_application/components/widgets/newsletter_vertical_card.dart';
import 'package:newsletter_mobile_application/components/widgets/newsletter_horizontal_card.dart';
import 'package:newsletter_mobile_application/pages/newsletter_details_page/newsletter_details_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final NewsletterController newsletterController = Get.put(
      NewsletterController(),
    );

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              child: Icon(Icons.dashboard, size: 16),
            ),
            Text(
              "Newsletter Seekers",
              style: Theme.of(
                context,
              ).textTheme.headlineLarge?.copyWith(letterSpacing: 1.5),
            ),
            Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100.0),
                color: Theme.of(context).colorScheme.primaryContainer,
              ),
              child: Icon(Icons.person, size: 16),
            ),
          ],
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
                child: Obx(
                  () =>
                      newsletterController
                          .isLoadingTopHeadlinesNewslettersData
                          .value
                      ? Row(
                          children: [
                            NewsletterHorizontalLoadingCard(),
                            NewsletterHorizontalLoadingCard(),
                            // NewsletterHorizontalLoadingCard(),
                            // NewsletterHorizontalLoadingCard(),
                          ],
                        )
                      :
                        // Row(
                        //     children: [
                        //       ...newsletterController.topHeadlinesNewsletters.map(
                        //         (newsletter) => NewsletterVerticalCard(
                        //           tag: "Trending No 1",
                        //           title: newsletter.title ?? "",
                        //           time: newsletter.publishedAt ?? "",
                        //           author: newsletter.author ?? "Unknown",
                        //           thumbnailImageURL: newsletter.urlToImage ?? "",
                        //           onTap: () {
                        //             Get.to(
                        //               NewsletterDetailsPage(
                        //                 newsletter: newsletter,
                        //               ),
                        //             );
                        //           },
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        Row(
                          children: [
                            NewsletterHorizontalLoadingCard(),
                            NewsletterHorizontalLoadingCard(),
                            // NewsletterHorizontalLoadingCard(),
                            // NewsletterHorizontalLoadingCard(),
                          ],
                        ),
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
              Obx(
                () => newsletterController.isLoadingForYouNewslettersData.value
                    ? Column(
                        children: [
                          NewsletterVerticalLoadingCard(),
                          SizedBox(height: 20.0),
                          NewsletterVerticalLoadingCard(),
                          SizedBox(height: 20.0),
                          NewsletterVerticalLoadingCard(),
                        ],
                      )
                    : Column(
                        children: [
                          ...newsletterController.topHeadlinesNewsletters.map((
                            newsletter,
                          ) {
                            return NewsletterHorizontalCard(
                              tag: "Trending No 1",
                              title: newsletter.title ?? "",
                              time: newsletter.publishedAt ?? "",
                              author: newsletter.author ?? "Unknown",
                              thumbnailImageURL: newsletter.urlToImage ?? "",
                              onTap: () {
                                Get.to(
                                  NewsletterDetailsPage(newsletter: newsletter),
                                );
                              },
                            );
                          }),
                        ],
                      ),
              ),
              SizedBox(height: 20.0),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       "Apple Newsletter",
              //       style: Theme.of(context).textTheme.headlineMedium,
              //     ),
              //     Text(
              //       "View all",
              //       style: Theme.of(context).textTheme.labelSmall,
              //     ),
              //   ],
              // ),
              SizedBox(height: 20.0),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Obx(
              //     () =>
              //         newsletterController
              //             .isLoadingLatestAppleArticlesData
              //             .value
              //         ? Row(
              //             children: [
              //               NewsletterHorizontalLoadingCard(),
              //               NewsletterHorizontalLoadingCard(),
              //               NewsletterHorizontalLoadingCard(),
              //             ],
              //           )
              //         : Row(
              //             children: [
              //               ...newsletterController.latestAppleArticles.map(
              //                 (newsletter) => NewsletterVerticalCard(
              //                   tag: "Trending No 1",
              //                   title: newsletter.title ?? "",
              //                   time: newsletter.publishedAt ?? "",
              //                   author: newsletter.author ?? "Unknown",
              //                   thumbnailImageURL: newsletter.urlToImage ?? "",
              //                   onTap: () {
              //                     Get.to(
              //                       NewsletterDetailsPage(
              //                         newsletter: newsletter,
              //                       ),
              //                     );
              //                   },
              //                 ),
              //               ),
              //             ],
              //           ),
              //   ),
              // ),
              SizedBox(height: 20.0),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       "Business Newsletter For You",
              //       style: Theme.of(context).textTheme.headlineMedium,
              //     ),
              //     Text(
              //       "View all",
              //       style: Theme.of(context).textTheme.labelSmall,
              //     ),
              //   ],
              // ),
              SizedBox(height: 20.0),
              // Obx(
              //   () =>
              //       newsletterController
              //           .isLoadingTopBusinessHeadlinesNewslettersData
              //           .value
              //       ? Column(
              //           children: [
              //             NewsletterVerticalLoadingCard(),
              //             NewsletterVerticalLoadingCard(),
              //             NewsletterVerticalLoadingCard(),
              //           ],
              //         )
              //       : Column(
              //           children: [
              //             ...newsletterController
              //                 .topBusinessHeadlinesNewsletters
              //                 .map((newsletter) {
              //                   return NewsletterHorizontalCard(
              //                     tag: "Trending No 1",
              //                     title: newsletter.title ?? "",
              //                     time: newsletter.publishedAt ?? "",
              //                     author: newsletter.author ?? "Unknown",
              //                     thumbnailImageURL:
              //                         newsletter.urlToImage ?? "",
              //                     onTap: () {
              //                       Get.to(
              //                         NewsletterDetailsPage(
              //                           newsletter: newsletter,
              //                         ),
              //                       );
              //                     },
              //                   );
              //                 }),
              //           ],
              //         ),
              // ),
              SizedBox(height: 20.0),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Text(
              //       "Tesla Newsletter",
              //       style: Theme.of(context).textTheme.headlineMedium,
              //     ),
              //     Text(
              //       "View all",
              //       style: Theme.of(context).textTheme.labelSmall,
              //     ),
              //   ],
              // ),
              SizedBox(height: 20.0),
              // SingleChildScrollView(
              //   scrollDirection: Axis.horizontal,
              //   child: Obx(
              //     () =>
              //         newsletterController
              //             .isLoadingLatestTeslaArticlesData
              //             .value
              //         ? Row(
              //             children: [
              //               NewsletterHorizontalLoadingCard(),
              //               NewsletterHorizontalLoadingCard(),
              //               NewsletterHorizontalLoadingCard(),
              //             ],
              //           )
              //         : Row(
              //             children: [
              //               ...newsletterController.latestTeslaArticles.map(
              //                 (newsletter) => NewsletterVerticalCard(
              //                   tag: "Trending No 1",
              //                   title: newsletter.title ?? "",
              //                   time: newsletter.publishedAt ?? "",
              //                   author: newsletter.author ?? "Unknown",
              //                   thumbnailImageURL: newsletter.urlToImage ?? "",
              //                   onTap: () {
              //                     Get.to(
              //                       NewsletterDetailsPage(
              //                         newsletter: newsletter,
              //                       ),
              //                     );
              //                   },
              //                 ),
              //               ),
              //             ],
              //           ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
