// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import 'customtext.dart';

class CustomButton extends StatelessWidget {
  final String str;
  final Color color;
  final Function() onpressed;
  final BorderSide borderSide;
  final double height;
  final Color Textcolor;
  final double fontsize;
  final FontWeight fontWeight;
  final double? width;
  final String fontFamily;
  CustomButton(
      {required this.str,
      this.color = const Color(0xff4796ff),
      this.borderSide = BorderSide.none,
      this.fontsize = 16,
      this.fontWeight = FontWeight.w700,
      this.Textcolor = Colors.white,
      this.width,
      this.height = 45,
      required this.onpressed,
      this.fontFamily = 'Lemon'});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: height,
      elevation: 15,
      minWidth: width,
      onPressed: onpressed,
      color: color,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), side: borderSide),
      child: CustomText(
        str: str,
        fontFamily: fontFamily,
        color: Textcolor,
        fontWeight: fontWeight,
        fontsize: fontsize,
      ),
    );
  }
}
