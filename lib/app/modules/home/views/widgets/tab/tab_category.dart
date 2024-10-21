import 'package:flutter/material.dart';

import '../section/section_category.dart';

class TabCategory extends StatelessWidget {
  const TabCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SectionCategory(),
          ],
        ),
      ),
    );
  }
}
