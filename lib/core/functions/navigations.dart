import 'package:flutter/material.dart';

class Navigations {
  static void navigationReplacement(BuildContext context, Widget screen) {
    Navigator.of(
      context,
    ).pushReplacement(MaterialPageRoute(builder: (context) => screen));
  }

  static void naviagationPush(BuildContext context, Widget screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }
  static void naviagationPop(BuildContext context) {
    Navigator.of(context).pop();
  }
}
