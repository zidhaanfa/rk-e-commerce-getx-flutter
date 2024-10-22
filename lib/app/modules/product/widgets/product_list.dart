import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rk_shop/app/modules/product/controllers/product_controller.dart';

import '../../../components/widget/Custom_list_item_2.dart';

class ProductList extends StatelessWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 4.0,
        vertical: 8.0,
      ),
      child: GetBuilder(
        init: ProductController(),
        builder: (ProductController productController) {
          if (productController.isLoading.value) {
            // Kondisi Loading
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (productController.isEmpty.value) {
            // Kondisi Data Kosong
            return Center(
              child: Text('No data available'),
            );
          } else {
            // Kondisi Menampilkan Data
            return GridView.builder(
              padding: EdgeInsets.all(0.w),
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
              itemCount: productController.data.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return CustomListItem2(
                  id: productController.data[index]['id'],
                  index: index,
                  title: productController.data[index]['title'],
                  description: productController.data[index]['description'],
                  image: productController.data[index]['image'],
                  price: productController.data[index]['price'],
                  onTap: () {},
                );
              },
            );
          }
        },
      ),
    );
  }
}
