import 'dart:async';

import 'package:flutter/material.dart';
import 'package:splash_screen/home_page.dart';

class SplashScreen extends StatefulWidget {
   SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

void initState() {
  super.initState();
  Timer(Duration(seconds: 3), () => Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) => Home()))));
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight, 
            end: Alignment.bottomRight,
            colors: [Color(0xFFFF800B),Color(0xFFCE1010)])
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Image.asset('assets/images/picture-1.png', height: 200, width: 200),
              ],
            ),
            Text(
              "A whole grocery store\n at your fingertips",
              textAlign: TextAlign.center,
              style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18 ),
              ),
              CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}