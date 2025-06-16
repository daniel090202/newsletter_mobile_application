import 'package:get/get.dart';

import 'package:flutter/widgets.dart';

import 'package:newsletter_mobile_application/pages/artical_page/artical_page.dart';
import 'package:newsletter_mobile_application/pages/home_page/home_page.dart';
import 'package:newsletter_mobile_application/pages/profile_page/profile_page.dart';

class BottomNavigationController extends GetxController {
  RxInt activeTabIndex = 0.obs;

  List<Widget> pages = [HomePage(), ArticalPage(), ProfilePage()];
}
