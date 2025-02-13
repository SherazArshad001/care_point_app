import 'package:flutter/material.dart';

class BottomCenterCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(width / 2, height, width, height - 50);
    path.lineTo(size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
