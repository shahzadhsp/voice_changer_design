import 'dart:ui';

import 'package:flutter/material.dart';

class tooltip extends StatefulWidget {
  final String title;

  const tooltip({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _tooltipState createState() => _tooltipState();
}

class _tooltipState extends State<tooltip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Tooltip(
          child: const IconButton(
            icon: Icon(Icons.info, size: 30.0),
            onPressed: null,
          ),
          message: 'This message is from tooltip...',
          padding: const EdgeInsets.all(20),
          showDuration: const Duration(seconds: 10),
          decoration: ShapeDecoration(
            color: Colors.blue,
            shape: ToolTipCustomShape(),
          ),
          textStyle: const TextStyle(color: Colors.white),
          preferBelow: false,
          verticalOffset: 20,
        ),
      ),
    );
  }
}

class ToolTipCustomShape extends ShapeBorder {

  final bool usePadding;
  ToolTipCustomShape({this.usePadding = true});

  @override
  EdgeInsetsGeometry get dimensions =>
      EdgeInsets.only(bottom: usePadding ? 20 : 0);

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) => Path();

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    rect =
        Rect.fromPoints(rect.topLeft, rect.bottomRight - const Offset(0, 20));
    return Path()
      ..addRRect(
          RRect.fromRectAndRadius(rect, Radius.circular(rect.height / 3)))
      ..moveTo(rect.bottomCenter.dx - 10, rect.bottomCenter.dy)
      ..relativeLineTo(10, 20)
      ..relativeLineTo(10, -20)
      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {}

  @override
  ShapeBorder scale(double t) => this;
}