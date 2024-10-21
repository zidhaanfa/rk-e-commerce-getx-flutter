import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rk_shop/app/modules/home/views/widgets/section/section_product.dart';

import '../../../../../components/widget/Custom_carousel.dart';
import '../../../../../components/widget/Custom_list_item_2.dart';
import '../../../controllers/home_controller.dart';

class TabHome extends StatelessWidget {
  const TabHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return SingleChildScrollView(
      child: Column(
        children: [
          // ----------------------- Carousel ----------------------- //
          CustomCarousel(
            selectedIndex: homeController.selectedIndexInfinite.value,
            data: homeController.kDemoImages,
            height: 150,
            itemWidth: MediaQuery.of(Get.context!).size.width / 1.005,
          ),
          5.verticalSpace,
          // ----------------------- Product ----------------------- //
          SectionProduct(),
        ],
      ),
    );
  }
}
