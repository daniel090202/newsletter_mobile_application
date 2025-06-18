import 'package:get/get.dart';

import 'package:flutter/material.dart';

import 'package:newsletter_mobile_application/components/widgets/search.dart';
import 'package:newsletter_mobile_application/controllers/newsletter_controller.dart';
import 'package:newsletter_mobile_application/components/widgets/newsletter_horizontal_card.dart';
import 'package:newsletter_mobile_application/pages/newsletter_details_page/newsletter_details_page.dart';

class ArticalPage extends StatelessWidget {
  const ArticalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final NewsletterController newsletterController =
        Get.find<NewsletterController>();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Search(),
              SizedBox(height: 20.0),
              Obx(
                () => Column(
                  children: [
                    ...newsletterController.searchNewslettersResults.map((
                      newsletter,
                    ) {
                      return NewsletterHorizontalCard(
                        tag: "Trending No 1",
                        title: newsletter.title ?? "",
                        time: newsletter.publishedAt ?? "",
                        author: newsletter.author ?? "Unknown",
                        thumbnailImageURL: newsletter.urlToImage ?? "",
                        onTap: () {
                          Get.to(NewsletterDetailsPage(newsletter: newsletter));
                        },
                      );
                    }),
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
