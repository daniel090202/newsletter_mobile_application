import 'package:get/get.dart';

import 'package:flutter/material.dart';

import 'package:newsletter_mobile_application/controllers/bottom_navigation_controller.dart';
import 'package:newsletter_mobile_application/components/widgets/app_bottom_navigation_bar.dart';

class HomeNavigationPage extends StatelessWidget {
  const HomeNavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavigationController bottomNavigationController = Get.put(
      BottomNavigationController(),
    );

    return Scaffold(
      body: Obx(
        () => bottomNavigationController
            .pages[bottomNavigationController.activeTabIndex.value],
      ),
      floatingActionButton: const AppBottomNavigationBar(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endContained,
    );
  }
}
