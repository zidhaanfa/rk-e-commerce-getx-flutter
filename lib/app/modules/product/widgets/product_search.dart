import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rk_shop/app/components/widget/Custom_textFormField2.dart';

import '../controllers/product_controller.dart';

class ProductSearch extends StatelessWidget {
  const ProductSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ProductController>(
      init: ProductController(),
      initState: (_) {},
      builder: (_) {
        return Container(
          child: CustomTextFormField2(
            name: 'Search',
            controller: _.searchController,
            enable: true,
            errorText: '',
            height: 50,
            keyboardType: TextInputType.text,
            prefixIcon: Icons.search,
            suffixIcon: _.searchController.text.isEmpty ? null : Icons.close,
            suffixOnPressed: () {
              _.searchController.clear();
            },
          ),
        );
      },
    );
  }
}
