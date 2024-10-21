import 'package:flutter/material.dart';

import '../components/category_item.dart';

class SectionCategory extends StatelessWidget {
  const SectionCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 5,
          itemBuilder: (context, index) {
            return CategoryItem();
          },
        )
      ],
    );
  }
}
