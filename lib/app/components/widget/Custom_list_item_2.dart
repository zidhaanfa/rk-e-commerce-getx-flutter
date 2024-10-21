import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '/app/components/config/config.dart';
import '/app/components/widget/Custom_text.dart';
import '/app/components/widget/Custom_text2.dart';
import '/app/components/widget/Custom_widget_max_width.dart';

class CustomListItem2 extends StatelessWidget {
  CustomListItem2({
    Key? key,
    this.onTap,
    this.id,
    this.index,
    this.title,
    this.description,
    this.price,
    this.image,
  }) : super(key: key);

  Function()? onTap;
  int? id;
  int? index;
  String? title;
  String? description;
  double? price;
  String? image;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      borderRadius: BorderRadius.circular(16.r),
      hoverColor: theme.buttonTheme.colorScheme!.primary.withOpacity(0.5),
      splashFactory: InkRipple.splashFactory,
      onTap: onTap,
      child: CustomWidgetMaxWidth(
        maxWidth: 1.sw,
        child: Card(
          elevation: 0,
          color: Colors.transparent,
          borderOnForeground: true,
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(16.r)),
                    child: Image.asset(
                      image ?? 'assets/images/models-tshirt.jpg',
                      width: 1.sw,
                      height: 0.17.sh,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Image.asset(
                          'assets/images/models-tshirt.jpg',
                          width: 1.sw,
                          height: 0.17.sh,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                  ),
                  // Positioned(
                  //   top: 0,
                  //   right: 0,
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       color: Colors.black.withOpacity(0.5),
                  //       borderRadius: BorderRadius.only(
                  //         bottomLeft: Radius.circular(8.r),
                  //       ),
                  //     ),
                  //     child: Column(
                  //       children: [
                  //         IconButton(
                  //           icon: Icon(
                  //             Icons.favorite,
                  //             color: theme.buttonTheme.colorScheme!.primary,
                  //           ),
                  //           onPressed: () {},
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CustomText2(
                      text: title ?? 'Lorem Ipsum Dolor Sit Amet',
                      fontType: FontType.titleSmall,
                      weight: FontWeight.w600,
                      maxLines: 2,
                    ),
                    5.verticalSpace,
                    CustomText2(
                      text: description ??
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                      fontType: FontType.bodySmall,
                      maxLines: 2,
                    ),
                  ],
                ),
              ),

              // ----------------------- Harga ----------------------- //
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomText2(
                  text: NumberFormat.simpleCurrency(
                    locale: 'id',
                    decimalDigits: 0,
                  ).format(price ?? 0.0),
                  fontType: FontType.bodyMedium,
                  colorText: theme.buttonTheme.colorScheme!.primary,
                  mainAxisAlignment: MainAxisAlignment.start,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
