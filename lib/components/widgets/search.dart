import 'package:get/get.dart';

import 'package:flutter/material.dart';

import 'package:newsletter_mobile_application/controllers/newsletter_controller.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    NewsletterController newsletterController =
        Get.find<NewsletterController>();

    // >>> Handle text fielf input: when user enter the search value, this controller will handle and store the changes:
    TextEditingController searchNewsletterController = TextEditingController();

    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: searchNewsletterController,
              decoration: InputDecoration(
                hintText: "Search newsletter...",
                // prefixIcon: Icon(Icons.search),
                border: InputBorder.none,
                fillColor: Theme.of(context).colorScheme.primaryContainer,
                // border: OutlineInputBorder(
                //   borderSide: BorderSide.none,
                //   borderRadius: BorderRadius.circular(20.0),
                // ),
              ),
            ),
          ),
          Obx(
            () => newsletterController.isLoadingSearchNewsletterResults.value
                ? Container(
                    width: 50.0,
                    height: 50.0,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    child: CircularProgressIndicator(color: Colors.white),
                  )
                : InkWell(
                    onTap: () {
                      newsletterController.searchNewsletters(
                        searchNewsletterController.text,
                      );
                    },
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14.0),
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      child: Icon(Icons.search),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
