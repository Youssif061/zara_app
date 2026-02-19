import 'dart:io';

import 'package:flutter/material.dart';
import 'package:zara_application/core/styles/themes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      builder: (context, child) {
        return SafeArea(
          bottom: Platform.isAndroid ? true : false,
          top: false,
          child: child ?? Container(),
        );
      },
      //home:SplashScreen(),
    );
  }
}
