import 'package:flutter/material.dart';

class CustomEmptyData extends StatelessWidget {
  const CustomEmptyData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/images/empty_data.png', width: 200, height: 200),
        Text(
          'Data is empty',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
