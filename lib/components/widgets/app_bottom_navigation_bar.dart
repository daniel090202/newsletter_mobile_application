import 'package:get/get.dart';

import 'package:flutter/material.dart';

import 'package:newsletter_mobile_application/controllers/bottom_navigation_controller.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavigationController bottomNavigationController = Get.put(
      BottomNavigationController(),
    );

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 64.0,
          width: 200.0,
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100.0),
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  bottomNavigationController.activeTabIndex.value = 0;
                },
                child: Obx(
                  () => AnimatedContainer(
                    width: 40.0,
                    height: 40.0,
                    curve: Curves.bounceInOut,
                    padding: EdgeInsets.all(5.0),
                    duration: Duration(milliseconds: 200),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      color:
                          bottomNavigationController.activeTabIndex.value == 0
                          ? Theme.of(context).colorScheme.primary
                          : null,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.home,
                        size: 24.0,
                        color:
                            bottomNavigationController.activeTabIndex.value == 0
                            ? Theme.of(context).colorScheme.onSurface
                            : Theme.of(context).colorScheme.secondaryContainer,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  bottomNavigationController.activeTabIndex.value = 1;
                },
                child: Obx(
                  () => AnimatedContainer(
                    width: 40.0,
                    height: 40.0,
                    curve: Curves.bounceInOut,
                    padding: EdgeInsets.all(5.0),
                    duration: Duration(milliseconds: 200),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      color:
                          bottomNavigationController.activeTabIndex.value == 1
                          ? Theme.of(context).colorScheme.primary
                          : null,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.book,
                        size: 24.0,
                        color:
                            bottomNavigationController.activeTabIndex.value == 1
                            ? Theme.of(context).colorScheme.onSurface
                            : Theme.of(context).colorScheme.secondaryContainer,
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  bottomNavigationController.activeTabIndex.value = 2;
                },
                child: Obx(
                  () => AnimatedContainer(
                    width: 40.0,
                    height: 40.0,
                    curve: Curves.bounceInOut,
                    padding: EdgeInsets.all(5.0),
                    duration: Duration(milliseconds: 200),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100.0),
                      color:
                          bottomNavigationController.activeTabIndex.value == 2
                          ? Theme.of(context).colorScheme.primary
                          : null,
                    ),
                    child: Center(
                      child: Icon(
                        size: 24.0,
                        Icons.settings,
                        color:
                            bottomNavigationController.activeTabIndex.value == 2
                            ? Theme.of(context).colorScheme.onSurface
                            : Theme.of(context).colorScheme.secondaryContainer,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
