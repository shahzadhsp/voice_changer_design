import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomListTile extends StatelessWidget {
  IconData leadingIcon;
  Color leadingIconColor;
  String text;
  Color textColor;
  VoidCallback onTap;
  CustomListTile(
      {super.key,
      required this.leadingIcon,
      required this.text,
      required this.onTap,
      required this.textColor,
      required this.leadingIconColor,});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        leadingIcon,
        color: leadingIconColor,
      ),
      title: Text(
        text,
        style: TextStyle(color: textColor),
      ),
      onTap: onTap,
    );
  }
}
