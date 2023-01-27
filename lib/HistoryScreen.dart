import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:untitled2/homeScreen.dart';

class HistoryScreen extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF2a2773),
        elevation: 0.0,
        title: const Text('Medical History'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(

          child: Image.asset('images/history.jpg',),
        ),
      ),
    );
  }
}
