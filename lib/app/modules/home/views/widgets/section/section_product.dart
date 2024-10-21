import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../../components/config/config.dart';
import '../../../../../components/widget/Custom_list_item_2.dart';
import '../../../../../components/widget/Custom_text.dart';
import '../../../../../components/widget/Custom_textButton.dart';
import '../../../controllers/home_controller.dart';

class SectionProduct extends StatelessWidget {
  const SectionProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomText(
                text: 'New Arrivals🔥',
                fontType: FontType.titleMedium,
                weight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: CustomTextButton(
                text: 'View All',
                colorText: theme.buttonTheme.colorScheme!.primary,
                onPressed: () {
                  // Get.to(() => BlogView());
                },
                fontType: FontType.titleSmall,
              ),
            ),
          ],
        ),
        GetBuilder(
          init: HomeController(),
          builder: (HomeController homeController) {
            if (homeController.isLoading.value) {
              // Kondisi Loading
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (homeController.isEmpty.value) {
              // Kondisi Data Kosong
              return Center(
                child: Text('No data available'),
              );
            } else {
              // Kondisi Menampilkan Data
              return GridView.builder(
                padding: EdgeInsets.all(8.w),
                addSemanticIndexes: true,
                cacheExtent: 9999,
                primary: false,
                clipBehavior: Clip.none,
                addAutomaticKeepAlives: true,
                addRepaintBoundaries: true,
                dragStartBehavior: DragStartBehavior.start,
                physics: const ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  childAspectRatio: 1 / 1.5,
                  // crossAxisSpacing: 10,
                  // mainAxisSpacing: 10,
                ),
                itemCount: homeController.data.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return CustomListItem2(
                    id: homeController.data[index]['id'],
                    index: index,
                    title: homeController.data[index]['title'],
                    description: homeController.data[index]['description'],
                    image: homeController.data[index]['image'],
                    price: homeController.data[index]['price'],
                    onTap: () {},
                  );
                },
              );
            }
          },
        ),
      ],
    );
  }
}
