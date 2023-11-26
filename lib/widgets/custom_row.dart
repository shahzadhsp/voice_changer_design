import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomRow extends StatelessWidget {
  String title;
  Color? titleColor;
  IconData icon;
  Color? iconColor;
  CustomRow({
    super.key,
    required this.title,
    required this.icon,
    this.iconColor,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: Color(0xff7041EE),
        ),
        SizedBox(
          width: 20,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 20, color: titleColor),
        )
      ],
    );
  }
}
