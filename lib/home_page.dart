import 'package:flutter/material.dart';
import 'package:voice_changer_design/test_screen.dart';
import 'package:voice_changer_design/widgets/dialogue.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Column(
          children: [
            InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return CustomDialog(
                      title: 'Save',
                      content: 'Do you want to save your changes?',
                    );
                  },
                );
              },
              child: Text('Save'),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const TestScreen()));
                },
                child: const Text('test Screen'))
          ],
        ));
  }
}
