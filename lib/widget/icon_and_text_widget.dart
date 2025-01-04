import 'package:flutter/material.dart';
import 'package:food_delivery/widget/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  IconData icon;
  Color iconColor;
  String text;

  IconAndTextWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.iconColor
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Icon(icon, color: iconColor),
          SizedBox(
            width: 5,
          ),
          SmallText(text: text)
        ],
      );
  }
}
