import 'package:flutter/material.dart';
import 'package:my_portfolio/globalvariable.dart';
import 'package:my_portfolio/screens/splash_page.dart';
import 'package:my_portfolio/screens/tele_web_app_page.dart';
import 'package:my_portfolio/utils/color_utils.dart';
import 'dart:html' as html;
void main() {
  String myurl = Uri.base.toString(); //get complete url
  String? para1 = Uri.base.queryParameters["startapp"]; //get parameter with attribute "para1"
  print("$para1");
  // Listen for changes in the URL
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Ameo Tap',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: SplashPage()
    );
  }
}
