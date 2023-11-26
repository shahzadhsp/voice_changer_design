import 'package:flutter/material.dart';
import 'package:voice_changer_design/widgets/custom_text_button.dart';
import 'package:voice_changer_design/widgets/dialogue.dart';

class CustomModelBottomSheet extends StatelessWidget {
  TextStyle customTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.bold, // You can customize the font weight as well
    // Add more style properties as needed
  );
  CustomModelBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Rename'),
            onTap: () => {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Rename'),
                    content: Card(
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Enter new name',
                          filled: true,
                          fillColor: Color(0xffEEEEEE),
                          suffixIcon: Icon(Icons.close),
                        ),
                      ),
                    ),
                    actions: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomTextButton(
                            title: 'Cancel',
                            containerColor: Colors.white,
                            titleColor: Colors.black,
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          CustomTextButton(
                            title: 'Cancel',
                            containerColor: Color(0xff7041EE),
                            titleColor: Colors.white,
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      )
                    ],
                  );
                },
              )
            },
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share'),
            onTap: () => {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CustomDialog(
                    title: 'Save',
                    content: 'Do you want to save your changes?',
                  );
                },
              ),
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Set as ringtone'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.delete),
            title: Text('Delete'),
            onTap: () => {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return CustomDialog(
                    title: 'Save',
                    content: 'Do you want to save your changes?',
                  );
                },
              ),
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Details'),
            onTap: () => {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('File Details',style: customTextStyle,),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: customTextStyle,
                        ),
                         Text('Voice Changer Record.mp3'), 
                        Text(
                          'Path',
                          style: customTextStyle,
                        ),
                        Text('/storage/emulated/0/Android/data/com.example.voice_changer_design/files/Voice Changer Record.mp3'),
                        Text(
                          'Format',
                          style: customTextStyle,
                        ),
                        Text('mp3'),
                        Text(
                          'Length',
                          style: customTextStyle,
                        ),
                        Text('122.04kb'),
                        Text(
                          'File Duration',
                          style: customTextStyle,
                        ),
                        Text('25/10/2022 11:47'),
                      ],
                    ),
                    actions: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: Text(
                                'Ok',
                                style: customTextStyle,
                              ))
                        ],
                      )
                    ],
                  );
                },
              )
            },
          ),
        ],
      ),
    );
  }
}
