import 'package:flutter/material.dart';
import 'package:voice_changer_design/widgets/custom_row.dart';
import 'package:voice_changer_design/widgets/setting__screen_container.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  TextStyle _textStyle = TextStyle(
    color: Color(0xff587190),
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffECEDEE),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: height * 0.08,
              decoration: BoxDecoration(
                color: Colors.white,
                // borderRadius: BorderRadius.circular(20),
                // border: Border.all(
                //   color: Color(0xff7041EE),
                //   width: 2,
                // ),
              ),
              child: Center(
                child: ListTile(
                  leading: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(color: Colors.black),
                  ),

                  // trailing: Icon(
                  //   Icons.more_vert,
                  //   color: Colors.black,
                  // ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Subscription',
                        style: _textStyle,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SettingScreenContainer(
                    title: 'Get one month premium for free',
                    titleColor: Colors.black,
                    containerColor: Colors.white,
                    leadingIcon: Icons.diamond,
                    leadingIconColor: Colors.blue,
                    trailingIcon: Icons.arrow_forward_ios,
                    circleAvatar: Colors.blue,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Apearance',
                      style: _textStyle,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SettingScreenContainer(
                    title: 'App Theme',
                    subTitle: 'System',
                    titleColor: Colors.black,
                    containerColor: Colors.white,
                    leadingIcon: Icons.lightbulb_outline,
                    leadingIconColor: Colors.blue,
                    trailingIcon: Icons.arrow_forward_ios,
                    circleAvatar: Colors.white,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'About Us',
                      style: _textStyle,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    elevation: 4,
                    child: Container(
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          // border: Border.all(
                          //   color: Color(0xff7041EE),
                          //   width: 2,
                          // ),
                        ),

                        /*
                         Color imageColor;
                        */
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomRow(
                                title: 'Language',
                                image: 'assets/images/languageSvg.svg',
                              ),
                              CustomRow(
                                  title: 'Privacy & Policy',
                                  image: 'assets/images/starSvg.svg'),
                              CustomRow(
                                  title: 'About App',
                                  image: 'assets/images/infoSvg.svg'),
                              CustomRow(
                                  title: 'Terms & Conditions',
                                  image: 'assets/images/historySvg.svg'),
                              CustomRow(
                                  title: 'Feedback',
                                  image: 'assets/images/feedbackSvg.svg'),
                              CustomRow(
                                  title: 'Share App',
                                  image: 'assets/images/shareSvg.svg'),
                           
                            ],
                          ),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
