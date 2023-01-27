// @dart=2.9

import 'package:flutter/material.dart';
import 'package:untitled2/NafathScreen.dart';
import 'package:untitled2/homeScreen.dart';
import 'package:untitled2/prescription.dart';

TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

class StarterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loginButon = Material(
      elevation: 15.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xFF2a2773),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return LoadingScreen();
          }));
        },
        child: Text("Log in as patient",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    final logupButon = Material(
      elevation: 15.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xFF2a2773),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.height,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {},
        child: Text("Log in as doctor ",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('تطبيب'),
        backgroundColor: Color(0xFF2a2773),
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.values[0],
        children: [
          Container(
            // height: double.infinity,
            // width: double.infinity, // it will take half screen
            margin: EdgeInsets.only(top: 80,bottom: 100),
            child: Hero(
              // Hero is used for shared animation transaction
              tag: 'images/logo.jpeg',
              // tag should be same as parent
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25)),
                child: Image.asset(
                  'images/logo.jpeg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          //Image.asset('images/Untitled-7 copy.jpg',height: 400,),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(

              color: Colors.white,
              child: loginButon,
              height: 60,
              width: 350,
              //margin: EdgeInsets.only(bottom: 40,left: 60,right: 60),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              color: Colors.white,
              child: logupButon,
              height: 60,
              width: 350,
              //margin: EdgeInsets.only(bottom: 40,left: 60,right: 60),
            ),
          ),
        ],
      ),
    );
  }
}
