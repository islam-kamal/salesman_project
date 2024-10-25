import 'package:flutter/material.dart';

customAnimatedPushNavigation(BuildContext context, Widget screen) {
  return Navigator.push(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation1, animation2) {
        return screen;
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
      transitionDuration: Duration(milliseconds: 50),
    ),
  );
}


customAnimatedPushReplacementNavigation(BuildContext context, Widget screen) {
  return Navigator.pushReplacement(
    context,
    PageRouteBuilder(
      pageBuilder: (context, animation1, animation2) {
        return screen;
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
      transitionDuration: Duration(milliseconds: 50),
    ),
  );
}
