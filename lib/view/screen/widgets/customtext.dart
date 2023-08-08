import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final Color color;
  final String str;
  final String fontFamily;
  final double fontsize;
  final FontWeight fontWeight;

  const CustomText({
    super.key,
    this.color = Colors.white,
    this.str = '',
    this.fontFamily = 'Lemon',
    this.fontWeight = FontWeight.w600,
    this.fontsize = 22,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      str,
      style: TextStyle(
          color: color,
          fontFamily: fontFamily,
          fontSize: fontsize,
          fontWeight: fontWeight),
    );
  }
}
