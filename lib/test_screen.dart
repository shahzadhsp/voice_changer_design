import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voice_changer_design/widgets/custom_container.dart';
import 'package:voice_changer_design/widgets/custom_model_bottom_sheet.dart';
import 'package:voice_changer_design/widgets/dialogue.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});
  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xff6B5BFF),
                        Color(0xff9670FF),
                      ],
                    )),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text(
                        'Share',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Color(0xffECEDEE),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Color(0xff7041EE),
                    width: 2,
                  ),
                ),
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color(0xff7041EE),
                      child: Icon(
                        Icons.music_note,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      'VoiceChanger_Record.mp3',
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: Text(
                      '122.04kb',
                      style: TextStyle(color: Colors.black),
                    ),
                    trailing: Icon(
                      Icons.more_vert,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                CustomContainer(
                  title: 'Set as ',
                  icon: Icons.notifications,
                  iconColor: Colors.white,
                  titleColor: Colors.white,
                  containerColor: Color(0xff7041EE),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomContainer(
                  title: 'Share',
                  icon: Icons.share,
                  iconColor: Colors.black,
                  titleColor: Colors.black,
                  containerColor: Color(0xffE5E5EA),
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (BuildContext bc) {
                          return CustomModelBottomSheet();
                        });
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [],
                ),
                SvgPicture.asset(
                  'assets/images/facebook_svg.svg',
                  height: 50,
                  width: 50,
                  fit: BoxFit.cover,
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}








// Rename Dialogue
/*
  showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
      title: Text('Rename'),
      content: Card(child: Row(children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Enter new name',
          ),)
      ]),),
   
      actions: <Widget>[
        TextButton(
          onPressed: () {
            // Perform the save operation here
            // For example: saveData();
            Navigator.of(context).pop(); // Close the dialog
          },
          child: Text('Yes'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: Text('No'),
        ),
      ],
    );
                  },
                ),


*/