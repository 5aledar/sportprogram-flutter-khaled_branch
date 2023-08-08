import 'package:flutter/material.dart';


class SlideRight extends PageRouteBuilder {
  final page;
  SlideRight({this.page})
      : super(
            pageBuilder: (context, animation, animationtwo) => page,
            transitionsBuilder: (context, animation, animationtwo, child) {
              var begin = Offset(0, 1);
              var end = Offset(0, 0);
              var tween = Tween(begin: begin, end: end);
              var offsetanimation = animation.drive(tween);
              return SlideTransition(
                position: offsetanimation,
                child: child,
              );
            });
}
