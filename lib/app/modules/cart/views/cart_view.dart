import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../components/widget/Custom_appBar.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          // ----------------------- Header ----------------------- //
          CustomAppBar(
            pageName: 'Cart',
            subTitle: 'Let\'s Checkout',
            withTrailing: true,
            trailingColor: theme.errorColor,
            trailingIcon: Icons.delete,
          ),

          // ----------------------- Content ----------------------- //
          Card(
            child: Column(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}
