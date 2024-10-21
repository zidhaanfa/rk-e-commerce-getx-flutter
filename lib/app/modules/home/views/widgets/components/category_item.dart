import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'assets/images/models-tshirt.jpg',
              width: double.infinity,
              height: 130,
              fit: BoxFit.cover,
            ),
          ),
          //title category and subtitle category, on center left
          Positioned(
            top: 35,
            left: 30,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: theme.buttonTheme.colorScheme!.primary.withOpacity(0.7),
                borderRadius: const BorderRadius.all(Radius.circular(8)),
              ),
              child: Column(
                children: [
                  Text(
                    'T-Shirt',
                    style: TextStyle(
                      color: theme.buttonTheme.colorScheme!.onPrimary,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    '1000 Items',
                    style: TextStyle(
                      color: theme.buttonTheme.colorScheme!.onPrimary,
                      fontSize: 12,
                    ),
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
