import 'package:flutter/material.dart';

//Copy this CustomPainter code to the Bottom of the File
class BottomSlider extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.2656466);
    path_0.cubicTo(0, size.height * 0.2168640, 0, size.height * 0.1924727,
        size.width * 0.004890213, size.height * 0.1718670);
    path_0.cubicTo(
        size.width * 0.01213373,
        size.height * 0.1413455,
        size.width * 0.02695200,
        size.height * 0.1156133,
        size.width * 0.04657680,
        size.height * 0.09947765);
    path_0.cubicTo(
        size.width * 0.05982587,
        size.height * 0.08858409,
        size.width * 0.07665627,
        size.height * 0.08374886,
        size.width * 0.1103176,
        size.height * 0.07407765);
    path_0.lineTo(size.width * 0.1103176, size.height * 0.07407765);
    path_0.cubicTo(
        size.width * 0.2351464,
        size.height * 0.03821439,
        size.width * 0.2975600,
        size.height * 0.02028246,
        size.width * 0.3603547,
        size.height * 0.01088886);
    path_0.cubicTo(
        size.width * 0.4531947,
        size.height * -0.002999159,
        size.width * 0.5468053,
        size.height * -0.002999159,
        size.width * 0.6396453,
        size.height * 0.01088886);
    path_0.cubicTo(
        size.width * 0.7024400,
        size.height * 0.02028246,
        size.width * 0.7648533,
        size.height * 0.03821439,
        size.width * 0.8896827,
        size.height * 0.07407765);
    path_0.lineTo(size.width * 0.8896827, size.height * 0.07407765);
    path_0.cubicTo(
        size.width * 0.9233440,
        size.height * 0.08374886,
        size.width * 0.9401733,
        size.height * 0.08858409,
        size.width * 0.9534240,
        size.height * 0.09947765);
    path_0.cubicTo(
        size.width * 0.9730480,
        size.height * 0.1156133,
        size.width * 0.9878667,
        size.height * 0.1413455,
        size.width * 0.9951093,
        size.height * 0.1718670);
    path_0.cubicTo(size.width, size.height * 0.1924727, size.width,
        size.height * 0.2168640, size.width, size.height * 0.2656466);
    path_0.lineTo(size.width, size.height);
    path_0.lineTo(0, size.height);
    path_0.lineTo(0, size.height * 0.2656466);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = Colors.white.withOpacity(1.0);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
