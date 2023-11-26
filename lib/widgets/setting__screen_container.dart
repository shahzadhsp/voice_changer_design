import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SettingScreenContainer extends StatelessWidget {
  String title;
  Color titleColor;
  Color containerColor;
  IconData leadingIcon;
  Color leadingIconColor;
  IconData trailingIcon;
  Color trailingIconColor;
  Color? circleAvatar;

  String subTitle;
  Color? subTitleColor;

  SettingScreenContainer(
      {super.key,
      required this.title,
      this.circleAvatar ,
      this.leadingIconColor = Colors.blue,
      this.trailingIconColor = Colors.black,
      required this.titleColor,
      required this.containerColor,
      required this.leadingIcon,
      this.subTitle = '',
      this.subTitleColor ,
      required this.trailingIcon});

  @override
  Widget build(BuildContext context) {
        double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: height *0.08,
      decoration: BoxDecoration(
        color: containerColor,
       borderRadius: BorderRadius.circular(10),
        // border: Border.all(    
        //   color: Color(0xff7041EE),
        //   width: 2,
        // ),
      ),
      child: Center(
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: circleAvatar,
            child: Icon(
              leadingIcon,
              color: Colors.black,
            ),
          ),
          title: Text(
            title,
            style: TextStyle(color: Colors.black),
          ),
          subtitle: Text(
            subTitle,
            style: TextStyle(color: subTitleColor),
          ),
          trailing: Icon(
            trailingIcon,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
