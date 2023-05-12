import 'package:first/ui/Practise_screens/progress_indicator.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import '../First_task/Login_screen_task.dart';
import 'carusol_slider.dart';
import 'grid_view.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushNamed(context, 'Securestorage');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset(
            "assets/images/girl6.png",
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
