// import 'package:flutter/material.dart';
// import 'package:google_ml_kit/google_ml_kit.dart';



// class ImageLabelingPage extends StatefulWidget {
//   @override
//   _ImageLabelingPageState createState() => _ImageLabelingPageState();
// }

// class _ImageLabelingPageState extends State<ImageLabelingPage> {
//   ImageLabeler imageLabeler = GoogleMlKit.vision.imageLabeler();

//   @override
//   void dispose() {
//     imageLabeler.close();
//     super.dispose();
//   }

//   Future<void> _labelImage(String imagePath) async {
//     final inputImage = InputImage.fromFilePath(imagePath);
//     final List<ImageLabel> labels = await imageLabeler.processImage(inputImage);

//     setState(() {
//       // Handle the labels obtained
//       for (ImageLabel label in labels) {
//         print('Label: ${label.label}, Confidence: ${label.confidence}');
//       }
//     });
//   }
//   // Future labelsread()async{
//   //       var  result = '';
    
//   // }

//   @override
//   Widget build(BuildContext context) {
//     // Call _labelImage with your image path
//     _labelImage('path_to_your_image.jpg');

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Image Labeling Example'),
//       ),
//       body: Center(
//         child: Text('Check console for labels'),
//       ),
//     );
//   }
// }
