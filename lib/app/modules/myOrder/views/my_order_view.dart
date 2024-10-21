import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../components/widget/Custom_appBar.dart';
import '../controllers/my_order_controller.dart';

class MyOrderView extends GetView<MyOrderController> {
  const MyOrderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: Column(
        children: [
          // ----------------------- Header ----------------------- //
          CustomAppBar(
            pageName: 'My Order',
            subTitle: 'Manage your order',
            withTrailing: true,
            trailingColor: theme.primaryColor,
            trailingIcon: Icons.chat,
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
