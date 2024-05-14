import 'package:flutter/cupertino.dart';

class CustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);
    final firstCurve = Offset(0, size.height - 20);
    final secondCurve = Offset(30, size.height - 20);
    path.quadraticBezierTo(
      firstCurve.dx,
      firstCurve.dy,
      secondCurve.dx,
      secondCurve.dy,
    );

    final secondFirstCurve = Offset(0, size.height - 20);
    final secondSecondCurve = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(
      secondFirstCurve.dx,
      secondFirstCurve.dy,
      secondSecondCurve.dx,
      secondSecondCurve.dy,
    );

    final thirdCurveFirst = Offset(size.width, size.height - 20);
    final thirdCurveSecond = Offset(size.width, size.height);
    path.quadraticBezierTo(
      thirdCurveFirst.dx,
      thirdCurveFirst.dy,
      thirdCurveSecond.dx,
      thirdCurveSecond.dy,
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
