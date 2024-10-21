import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../components/config/base_data.dart';
import '../../home/bindings/home_binding.dart';
import '../controllers/custom_navigation_bar_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNavigationBarView extends GetView<CustomNavigationBarController> {
  const CustomNavigationBarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    CustomNavigationBarController c = Get.put(CustomNavigationBarController());
    return Obx(() {
      return WillPopScope(
        onWillPop: () async {
          if (c.selectedMenu.value != 0) {
            c.selectedMenu.value = 0;
            return false;
          } else {
            return true;
          }
        },
        child: Scaffold(
          backgroundColor: theme.backgroundColor,
          bottomNavigationBar: ClipRRect(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20),
              topLeft: Radius.circular(20),
              // bottomLeft: Radius.circular(40),
              // bottomRight: Radius.circular(40),
            ),
            child: BottomNavigationBar(
              backgroundColor: theme.backgroundColor,
              key: c.navigatorKey,
              elevation: 2,
              // backgroundColor: Color.fromARGB(255, 255, 255, 255),
              items: [
                //Home Page item
                BottomNavigationBarItem(
                  icon: const Icon(FontAwesomeIcons.house),
                  label: "Home",
                ),
                //Courses Page item
                BottomNavigationBarItem(
                  icon: const Icon(FontAwesomeIcons.cartShopping),
                  label: "Cart",
                ),
                //Blog Page item
                BottomNavigationBarItem(
                  icon: const Icon(FontAwesomeIcons.clipboardList),
                  label: "My Order",
                ),
                //Account Page item
                BottomNavigationBarItem(
                  icon: const Icon(FontAwesomeIcons.gear),
                  label: "Account",
                ),
              ],
              type: BottomNavigationBarType.shifting,
              fixedColor: theme.primaryColor,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              currentIndex: c.selectedMenu.value,
              unselectedLabelStyle: TextStyle(
                fontSize: 12,
                color: Colors.grey[300],
                fontWeight: FontWeight.w300,
              ),
              selectedLabelStyle: const TextStyle(
                fontSize: 12,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              selectedIconTheme: IconThemeData(
                color: theme.primaryColor,
              ),
              unselectedIconTheme: IconThemeData(
                color: theme.unselectedWidgetColor,
              ),
              onTap: (index) async {
                // c.seciliMenu.value = index;
                if (index == 0) {
                  c.selectedMenu.value = index;
                  BindingsBuilder.put(() => HomeBinding());
                  //
                } else if (index == 1) {
                  c.selectedMenu.value = index;
                } else if (index == 2) {
                  c.selectedMenu.value = index;
                } else if (index == 3) {
                  c.selectedMenu.value = index;
                }
              },
            ),
          ),
          body: c.pages[c.selectedMenu.value],
        ),
      );
    });
  }
}
