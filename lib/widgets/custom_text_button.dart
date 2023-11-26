import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  String title;
  Color titleColor;
  Color containerColor;

  VoidCallback? onTap;
  CustomTextButton(
      {super.key,
      required this.title,
      required this.containerColor,
      required this.titleColor,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: containerColor),
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: titleColor,
            ),
          ),
        ),
      ),
    );
  }
}
