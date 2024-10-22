import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../components/widget/Custom_appBar.dart';
import '../../../routes/app_pages.dart';
import '../controllers/product_controller.dart';
import '../widgets/product_list.dart';
import '../widgets/product_search.dart';

class ProductView extends GetView<ProductController> {
  const ProductView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          // ----------------------- Header ----------------------- //
          CustomAppBar(
            pageName: 'Product',
            subTitle: 'We have the best product',
            withTrailing: true,
            withImage: false,
            trailingColor: theme.primaryColor,
            trailingIcon: Icons.shopping_cart_checkout,
            onTrailingTap: () {
              Get.toNamed(Routes.CART);
            },
          ),

          // ----------------------- Content ----------------------- //
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // ----------------------- Search ----------------------- //
                    ProductSearch(),

                    // ----------------------- Product ----------------------- //
                    ProductList(),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
