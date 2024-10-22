import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rk_shop/app/modules/account/views/account_view.dart';
import 'package:rk_shop/app/modules/cart/views/cart_view.dart';
import 'package:rk_shop/app/modules/home/views/home_view.dart';
import 'package:rk_shop/app/modules/myOrder/views/my_order_view.dart';
import 'package:rk_shop/app/modules/product/views/product_view.dart';

class CustomNavigationBarController extends GetxController {
  //TODO: Implement CustomNavigationBarController

  final count = 0.obs;
// Selected Menu Index for Navigation Bar
  final selectedMenu = 0.obs;
// List of Pages to be displayed in the Navigation Bar
  late List<Widget> pages;
// Initial Page to be displayed
  late HomeView homeView;
  late ProductView productView;
  late MyOrderView myOrderView;
  late AccountView accountView;

// Global Key for the Navigation Bar
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  void onInit() {
    super.onInit();

    // Initialize the Pages
    homeView = HomeView();
    productView = ProductView();
    myOrderView = MyOrderView();
    accountView = AccountView();

    // Initialize the List of Pages
    pages = [homeView, productView, myOrderView, accountView];
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
