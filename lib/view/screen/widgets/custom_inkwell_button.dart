// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

import 'customtext.dart';

class CustomInkwell extends StatelessWidget {
  final String str;
  final Function() onpressed;
  final Color Textcolor;
  final double fontsize;
  final FontWeight fontWeight;
  final String fontFamily;

  ////constractar
  CustomInkwell(
      {required this.str,
      this.fontsize = 18,
      this.fontWeight = FontWeight.w400,
      this.Textcolor = const Color(0xff4796ff),
      required this.onpressed,
      this.fontFamily = 'Lemon'});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
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
