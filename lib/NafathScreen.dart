import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:untitled2/homeScreen.dart';

class NafathScreen extends StatelessWidget {
  Timer? _timer;
  var size, height, width;


  @override
  void initState() async {
    await EasyLoading.show(status: 'loading...');
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/nafath.jpg'))),
        child: Padding(
          padding:  EdgeInsets.only(top: height*0.75,bottom: height/8,right: width/7,left: width/7),
          child: GestureDetector(

            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (Context) {
                return LoadingScreen2();
              }));
            },
            child: Container(
              height: 10,
              color: Colors.transparent,
            ),
          ),
        ),
      ),
    );
  }
}


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  bool _isLoading = false; // This is initially false wh  ere no loading state



  @override
  void initState() {
    super.initState();
    dataLoadFunction(); // this function gets called
  }

  dataLoadFunction() async {
    setState(() {
      _isLoading = true; // your loader has started to load
    });

    await Future.delayed(const Duration(seconds: 2), (){});

    setState(() {
      _isLoading = false; // your loder will stop to finish after the data fetch
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: _isLoading
              ? Center(child: CircularProgressIndicator()) // this will show when loading is true
              : NafathScreen() // this will show when loading is false
      ),
    );
  }
}

