import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rk_shop/app/components/widget/Custom_appBar.dart';
import 'package:rk_shop/app/modules/home/views/widgets/tab/tab_category.dart';
import 'package:rk_shop/app/modules/home/views/widgets/tab/tab_home.dart';

import '../../../components/widget/Custom_carousel.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      body: Column(
        children: [
          // ----------------------- Header ----------------------- //
          CustomAppBar(
            pageName: 'Hi, User',
            subTitle: 'Let\'s go shopping',
            withTrailing: false,
            trailingWidget: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notifications,
                  ),
                ),
              ],
            ),
          ),

          // ----------------------- Content ----------------------- //
          Expanded(
              child: Scaffold(
            appBar: TabBar(
              controller: homeController.tabHomeController,
              dividerColor: Colors.transparent,
              automaticIndicatorColorAdjustment: true,
              splashBorderRadius: BorderRadius.circular(10),
              tabs: const [
                Tab(text: 'Home'),
                Tab(text: 'Category'),
              ],
            ),
            body: TabBarView(
              controller: homeController.tabHomeController,
              children: const [
                TabHome(),
                TabCategory(),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
