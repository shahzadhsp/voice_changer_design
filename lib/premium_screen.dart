import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:voice_changer_design/widgets/custom_row.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({super.key});

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    height: height * 0.25,
                    width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/image.png',
                          )),
                    ),
                    child: Icon(
                      Icons.close,
                      color: Colors.red,
                    ))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Voice Changer',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Unlock all pro features',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  PremiumRow(
                    title: 'No ads (Remove ads)',
                  ),
                  PremiumRow(
                    title: 'Unlimited Sound effects',
                  ),
                  PremiumRow(
                    title: 'Unlock voice effects',
                  ),
                  PremiumRow(
                    title: 'Unloack all ambients',
                  ),
                  PremiumRow(
                    title: 'Adjust Effects',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class PremiumRow extends StatelessWidget {
  String title;
  Color? titleColor;
  PremiumRow({super.key, required this.title, this.titleColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          foregroundColor: Color(0xff7041EE),
          radius: 15,
          child: Icon(Icons.check),
        ),
        SizedBox(
          width: 15,
        ),
        Text(
          title,
          style: TextStyle(color: titleColor),
        )
      ],
    );
  }
}
