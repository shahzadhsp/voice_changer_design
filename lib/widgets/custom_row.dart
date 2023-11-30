import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

// ignore: must_be_immutable
class CustomRow extends StatelessWidget {
  String title;
  Color? titleColor;
  IconData? icon;
  String image;
  Color? iconColor;
  Color? imageColor;
  CustomRow({
    super.key,
    required this.title,
     this.icon,
    this.iconColor,
    this.titleColor,
    required this.image,
    this.imageColor,
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        SvgPicture.asset(
          image,
          color: imageColor,
          height: height * 0.024,
          width: width * 0.024,
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
