import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../../../../config/theme/my_theme.dart';
import '../../../../config/theme/theme_extensions/header_container_theme_data.dart';
import '../../../components/widget/Custom_appBar.dart';
import '../../../components/widget/Custom_card_setting.dart';
import '../../../routes/app_pages.dart';
import '../controllers/account_controller.dart';

import 'package:flutter_svg/flutter_svg.dart';

class AccountView extends GetView<AccountController> {
  const AccountView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ----------------------- Header ----------------------- //
          CustomAppBar(
            pageName: 'Account',
            subTitle: 'Manage your account',
            trailingIcon: Icons.chat,
            onTrailingTap: () {},
          ),

          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  10.verticalSpace,
                  // ----------------------- Account ----------------------- //
                  CustomCardSetting(
                    title: 'Users',
                    items: [
                      CustomCardSettingItem(
                        elevation: 0.2,
                        icon: Icons.person,
                        title: 'Personal Information',
                        subtitle: 'Change your personal information',
                        onTap: () {
                          // Get.toNamed(Routes.ACCOUNT_PERSONAL_INFORMATION);
                        },
                      ),
                      CustomCardSettingItem(
                        elevation: 0.2,
                        icon: FontAwesomeIcons.lock,
                        title: 'Change Password',
                        subtitle: 'Change your password',
                        onTap: () {
                          // Get.toNamed(Routes.TOPUP_BALANCE);
                        },
                      ),
                    ],
                  ),
                  CustomCardSetting(
                    title: 'Settings',
                    items: [
                      CustomCardSettingItem(
                        elevation: 0.2,
                        title: 'Change Theme',
                        subtitle: 'Light/Dark Mode',
                        trailing: Ink(
                          child: Container(
                            height: 39.h,
                            width: 39.h,
                            decoration: MyTheme.theme
                                .extension<HeaderContainerThemeData>()
                                ?.decoration,
                            child: SvgPicture.asset(
                              Get.isDarkMode
                                  ? 'assets/vectors/moon.svg'
                                  : 'assets/vectors/sun.svg',
                              fit: BoxFit.none,
                              color: MyTheme.theme.primaryColor,
                              height: 10,
                              width: 10,
                            ),
                          ),
                        ),
                        onTap: () {
                          MyTheme.changeTheme();
                        },
                      ),
                      CustomCardSettingItem(
                        elevation: 0.2,
                        cardColor: Colors.red[900],
                        title: 'Sign Out',
                        titleColor: Colors.white,
                        subtitle: 'Sign out from your account',
                        subtitleColor: Colors.white,
                        trailing: Icon(
                          Icons.logout,
                          color: Colors.white,
                        ),
                        onTap: () {
                          Get.offAllNamed(Routes.LOGIN);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
