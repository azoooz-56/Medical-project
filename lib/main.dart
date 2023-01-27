// @dart=2.9

import "dart:math";
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:untitled2/prescription.dart';
import 'package:untitled2/logSignScreen.dart';



void main() {
  return runApp(
    MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.lightBlue[800],
        accentColor: Colors.cyan[600],

        // Define the default font family.
        fontFamily: 'Georgia',

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 22.0, fontWeight: FontWeight.bold, color: Colors.black),
          headline2: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
          headline3: TextStyle(fontSize: 14.0, color: Colors.grey),
        ),
      ),
      home: Scaffold(
        //appBar: AppBar(),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70),
        child: SplashScreen(
            seconds: 5,
            navigateAfterSeconds: StarterPage(),
            image: Image.asset('images/logo.jpeg'),
            backgroundColor: Colors.white,
            //styleTextUnderTheLoader: new TextStyle(),
            photoSize: 200.0,
            //onClick: ()=>print("Flutter Egypt"),
            loaderColor: const Color(0xFF2a2773)),
      ),
    );
  }
}