import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  String title;
  IconData icon;
  Color containerColor;
  Color iconColor;
  Color titleColor;
  VoidCallback? onTap;

  CustomContainer(
      {super.key,
      required this.title,
      required this.icon,
      required this.containerColor,
      required this.iconColor,
      required this.titleColor, 
      this.onTap
      });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: containerColor),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: iconColor,
            ),
            Text(
              title,
              style: TextStyle(
                color: titleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
