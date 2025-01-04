import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final String text;
  Color? color;
  double size;
  TextOverflow overflow;

  BigText(
      {super.key,
      this.color = const Color(0xFF332d2b),
      this.overflow = TextOverflow.ellipsis,
      this.size = 20,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      overflow: overflow,
      maxLines: 1,
      style: TextStyle(
        fontFamily: 'Roboto',
        fontSize: size,
        fontWeight: FontWeight.w400,
        color: color
      ),
    );
  }
}
