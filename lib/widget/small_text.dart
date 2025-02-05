import 'package:flutter/material.dart';
import 'package:food_delivery/utils/dimension.dart';

class SmallText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  double height;

  SmallText(
      {super.key,
        this.color = const Color(0xFFccc7c5),
        this.size = 12,
        this.height = 1.2,
        required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontFamily: 'Roboto',
          fontSize: Dimension.getSize(size),
          fontWeight: FontWeight.w400,
          color: color
      ),
    );
  }
}
