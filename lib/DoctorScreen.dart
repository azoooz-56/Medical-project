import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class DoctorScreen extends StatelessWidget {
  var size, height, width;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Container(
                height: height / 2.5,
                width: double.infinity,
                padding: EdgeInsets.all(15),
                alignment: AlignmentDirectional.topStart,
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 30,
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/fatma.png"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dr. Fatemah Yusef',
                      style: TextStyle(
                        color: Color(0xFF2b2873),
                        fontSize: 20,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.star,
                          color: Color(0xFF3ae0f6),
                        ),
                        Icon(Icons.star, color: Color(0xFF2ecde8)),
                        Icon(Icons.star, color: Color(0xFF20bada)),
                        Icon(Icons.star, color: Color(0xFF0ba5ca)),
                        Icon(Icons.star, color: Color(0xFFcfcfcd)),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'Pulmonologist',
                      style: TextStyle(color: Color(0xFF08a0c6), fontSize: 19),
                    ),
                    Text(
                      'See all comments',
                      style: TextStyle(color: Color(0xFFb3b3b1), fontSize: 12),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Row(
                  children: const [
                    Icon(
                      Icons.pin_drop_outlined,
                      color: Color(0xFF2b2873),
                      size: 40,
                    ),
                    Text(
                      'Saudi arabia , Jeddah',
                      style: TextStyle(color: Color(0xFF2b2873), fontSize: 17),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Row(
                  children: [
                    Container(
                      height: height / 14,
                      width: width / 3.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xFF2b2873),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              '9 years',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Text(
                              'Experience',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width / 25,
                    ),
                    Container(
                      height: height / 14,
                      width: width / 3.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Color(0xFF08a0c6),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: const [
                            Text(
                              '8k',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Text(
                              'Patients',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Text(
                  'Dr. Fatimah Yousef obtained her Bachelor’s degree from Taibah University, Madinah, Saudi Arabia in 2011 and then obtained the Saudi Board in General Internal Medicine from the Medical Residency Program at Dr. Samir Abbas Hospital, Jeddah, Saudi Arabia in 2017. ',
                  style: TextStyle(
                    color: Color(0xFF2b2873),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Material(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xFF00A1C8),
                    child: MaterialButton(
                      minWidth: MediaQuery.of(context).size.height,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      onPressed: () {
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.noHeader,
                          headerAnimationLoop: false,
                          animType: AnimType.bottomSlide,
                          title: 'Appointment',
                          desc: 'Are you sure?',
                          buttonsTextStyle:
                              const TextStyle(color: Colors.black),
                          showCloseIcon: true,
                          btnCancelText: 'No',
                          btnOkText: 'Yes',
                          btnCancelOnPress: () {
                            Navigator.pop(context);
                          },
                          btnOkOnPress: () {
                            Navigator.pop(context);
                          },
                        ).show();
                      },
                      child: Text(
                        "Make an Appointment",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
