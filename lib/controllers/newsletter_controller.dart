import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:newsletter_mobile_application/models/newsletter_model.dart';

class NewsletterController extends GetxController {
  RxString errorMessage = "".obs;

  RxBool isLoadingForYouNewslettersData = false.obs;
  RxBool isLoadingLatestTeslaArticlesData = false.obs;
  RxBool isLoadingLatestAppleArticlesData = false.obs;
  RxBool isLoadingSearchNewsletterResults = false.obs;
  RxBool isLoadingTopHeadlinesNewslettersData = false.obs;
  RxBool isLoadingTopBusinessHeadlinesNewslettersData = false.obs;

  RxList<NewsletterModel> forYouNewsletters = <NewsletterModel>[].obs;
  RxList<NewsletterModel> latestTeslaArticles = <NewsletterModel>[].obs;
  RxList<NewsletterModel> latestAppleArticles = <NewsletterModel>[].obs;
  RxList<NewsletterModel> topHeadlinesNewsletters = <NewsletterModel>[].obs;
  RxList<NewsletterModel> searchNewslettersResults = <NewsletterModel>[].obs;
  RxList<NewsletterModel> topBusinessHeadlinesNewsletters =
      <NewsletterModel>[].obs;

  @override
  void onInit() async {
    super.onInit();

    getNewslettersForYou();
    getLatestAppleArticles();
    getLatestTeslaArticles();
    getTopHeadlinesNewsletters();
    getBusinessTopHeadlinesArticles();
  }

  Future<void> getTopHeadlinesNewsletters() async {
    isLoadingTopHeadlinesNewslettersData.value = true;

    String baseURL =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=ea6d5b0564724e67b5733b7424f10b45";

    try {
      http.Response response = await http.get(Uri.parse(baseURL));

      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        var articles = body["articles"];

        for (var newsletter in articles) {
          topHeadlinesNewsletters.add(NewsletterModel.fromJson(newsletter));
        }
      } else {
        errorMessage.value =
            "Something went wrong in top-headlines newsletters";
      }
    } catch (error) {
      errorMessage.value = error.toString();
    }

    isLoadingTopHeadlinesNewslettersData.value = false;
  }

  Future<void> getNewslettersForYou() async {
    isLoadingForYouNewslettersData.value = true;

    String baseURL =
        "https://newsapi.org/v2/everything?domains=wsj.com&apiKey=ea6d5b0564724e67b5733b7424f10b45";

    try {
      http.Response response = await http.get(Uri.parse(baseURL));

      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        var articles = body["articles"];

        for (var newsletter in articles) {
          topHeadlinesNewsletters.add(NewsletterModel.fromJson(newsletter));
        }
      } else {
        errorMessage.value =
            "Something went wrong in top-headlines newsletters";
      }
    } catch (error) {
      errorMessage.value = error.toString();
    }

    isLoadingForYouNewslettersData.value = false;
  }

  Future<void> getLatestAppleArticles() async {
    isLoadingLatestAppleArticlesData.value = true;

    String baseURL =
        "https://newsapi.org/v2/everything?q=apple&from=2025-06-16&to=2025-06-16&sortBy=popularity&apiKey=ea6d5b0564724e67b5733b7424f10b45";

    try {
      http.Response response = await http.get(Uri.parse(baseURL));

      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        var articles = body["articles"];

        for (var newsletter in articles) {
          latestAppleArticles.add(NewsletterModel.fromJson(newsletter));
        }
      } else {
        errorMessage.value =
            "Something went wrong in top-headlines newsletters";
      }
    } catch (error) {
      errorMessage.value = error.toString();
    }

    isLoadingLatestAppleArticlesData.value = false;
  }

  Future<void> getLatestTeslaArticles() async {
    isLoadingLatestTeslaArticlesData.value = true;

    String baseURL =
        "https://newsapi.org/v2/everything?q=tesla&from=2025-05-17&sortBy=publishedAt&apiKey=ea6d5b0564724e67b5733b7424f10b45";

    try {
      http.Response response = await http.get(Uri.parse(baseURL));

      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        var articles = body["articles"];

        for (var newsletter in articles) {
          latestTeslaArticles.add(NewsletterModel.fromJson(newsletter));
        }
      } else {
        errorMessage.value =
            "Something went wrong in top-headlines newsletters";
      }
    } catch (error) {
      errorMessage.value = error.toString();
    }

    isLoadingLatestTeslaArticlesData.value = false;
  }

  Future<void> getBusinessTopHeadlinesArticles() async {
    isLoadingTopBusinessHeadlinesNewslettersData.value = true;

    String baseURL =
        "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=ea6d5b0564724e67b5733b7424f10b45";

    try {
      http.Response response = await http.get(Uri.parse(baseURL));

      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        var articles = body["articles"];

        for (var newsletter in articles) {
          topBusinessHeadlinesNewsletters.add(
            NewsletterModel.fromJson(newsletter),
          );
        }
      } else {
        errorMessage.value =
            "Something went wrong in top-headlines newsletters";
      }
    } catch (error) {
      errorMessage.value = error.toString();
    }

    isLoadingTopBusinessHeadlinesNewslettersData.value = false;
  }

  Future<void> searchNewsletters(String searchValue) async {
    isLoadingSearchNewsletterResults.value = true;

    String baseURL =
        "https://newsapi.org/v2/everything?q=$searchValue&from=2025-05-17&sortBy=publishedAt&apiKey=ea6d5b0564724e67b5733b7424f10b45";

    try {
      http.Response response = await http.get(Uri.parse(baseURL));

      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        var articles = body["articles"];

        searchNewslettersResults.clear();

        for (var newsletter in articles) {
          searchNewslettersResults.add(NewsletterModel.fromJson(newsletter));
        }
      } else {
        errorMessage.value =
            "Something went wrong during search for newsletters";
      }
    } catch (error) {
      errorMessage.value = error.toString();
    }

    isLoadingSearchNewsletterResults.value = false;
  }
}
