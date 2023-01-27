import 'package:flutter/material.dart';
import 'package:untitled2/homeScreen.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class RxReview extends StatefulWidget {
  RxReview(List arrDr, String name) {
    this.arrDr = arrDr;
    this.name = name;
  }

  late List arrDr;
  late String name;
  @override
  State<RxReview> createState() => _RxReviewState();
}

class _RxReviewState extends State<RxReview> {
  var size, height, width;
  bool sec = false;
  bool vis = false;
  String date = '12 November 2022';

  @override
  Widget build(BuildContext context) {
    String secondeMedi = '';
    String secondemg = '';
    String firstMedi = '';
    String firstmg = '';


    String first, seconde, third,fourth,fifth;
    int total = widget.arrDr.length;
    List secondeList = [];
    firstMedi = widget.arrDr.elementAt(0).elementAt(0);
    firstmg = widget.arrDr.elementAt(0).elementAt(1);

    double hi = 0;
    if (widget.arrDr.length == 2) {

      date = '26 November 2022';
      setState(() {
        vis = true;
      });
      secondeList = widget.arrDr.elementAt(1);
      secondeMedi = secondeList.elementAt(0);
      secondemg = secondeList.elementAt(1);
      first = secondeList.elementAt(2);
      seconde = secondeList.elementAt(3);
      third = secondeList.elementAt(4);
      fourth = secondeList.elementAt(5);
      fifth = secondeList.elementAt(6);

    }

    if (sec) {
      first = secondeList.elementAt(2);
      seconde = secondeList.elementAt(3);
      third = secondeList.elementAt(4);
      fourth = secondeList.elementAt(5);
      fifth = secondeList.elementAt(6);
    } else {
      first = widget.arrDr.elementAt(0).elementAt(2);
      seconde = widget.arrDr.elementAt(0).elementAt(3);
      third = widget.arrDr.elementAt(0).elementAt(4);
      fourth = widget.arrDr.elementAt(0).elementAt(5);
      fifth = widget.arrDr.elementAt(0).elementAt(6);

      if(widget.arrDr.elementAt(0).elementAt(0) == 'Esomeprazole'){
        date = '5 November 2022';
      }

    }
    // getting the size of the window
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    // EdgeInsets.only(
    //     top: (height / 35), left: width / 11, right: width / 11),
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2a2773),
        elevation: 0.0,
        title: const Text('Rx Review'),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: height / 2.35,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Color(0xFF2a2773),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                  boxShadow: [BoxShadow(blurRadius: 5)]),
              child: Padding(
                padding: EdgeInsets.only(
                    top: (height / 35), left: width / 11, right: width / 11),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      widget.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      //Center Row contents vertically,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: height / 45),
                          height: height / 17,
                          width: width / 10,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFF4d4b87),
                            boxShadow: [
                              BoxShadow(
                                // shadow color
                                blurRadius: 5,
                                // shadow radius
                                offset: Offset(0, 3),
                                // shadow offset
                                // The amount the box should be inflated prior to applying the blur
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.date_range,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: width / 23,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: height / 45),
                          child:  Text(
                            date,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: height / 30,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Medicines',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: height / 130,
                            ),
                            Text(
                              '$total total',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Color(0xFF8d97af),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: width / 2.8,
                        ),
                        Container(
                          height: height / 17,
                          width: width / 10,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                // shadow color
                                blurRadius: 5,
                                // shadow radius
                                offset: Offset(0, 3),
                                // shadow offset
                                // The amount the box should be inflated prior to applying the blur
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.list,
                          ),
                        ),
                        SizedBox(
                          width: width / 40,
                        ),
                        Container(
                          height: height / 17,
                          width: width / 12,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.date_range_outlined,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          sec = false;
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: height / 45),
                        padding: EdgeInsets.only(right: width / 22),
                        height: height / 18,
                        decoration: BoxDecoration(
                            color: !sec ? Color(0xFF8180a6):Color(0xFF4d4b87),
                            borderRadius:
                                BorderRadius.all(Radius.circular(15))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.all(8),
                                    child: Image(
                                        image:
                                            AssetImage('images/capsul.png'))),
                                SizedBox(
                                  width: width / 30,
                                ),
                                Text(
                                  firstMedi,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              firstmg,
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ),
                    Visibility(
                      visible: vis,
                      child: GestureDetector(

                        onTap: (){
                          setState(() {
                            sec = true;
                          });
                        },
                        child: Container(

                          margin: EdgeInsets.only(top: height / 60),
                          padding: EdgeInsets.only(right: width / 22),
                          height: height/18,
                          decoration: BoxDecoration(
                              color: sec ? Color(0xFF8180a6):Color(0xFF4d4b87),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      margin: EdgeInsets.all(8),
                                      child: Image(
                                          image:
                                              AssetImage('images/capsul.png'))),
                                  SizedBox(
                                    width: width / 30,
                                  ),
                                  Text(
                                    secondeMedi,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                secondemg,
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: width / 11, right: width / 11, top: height / 35),
                    child: Text(
                      first,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: height / 30,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: width / 11, right: width / 11),
                    child: Text(
                      'Directions:',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: height / 200,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: width / 11, right: width / 11),
                    child: Text(
                      seconde,
                      style: TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    height: height / 30,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: width / 11, right: width / 11),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Quantity:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              third,
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Refills:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'No Refills',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Duration:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '7 days',
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height / 50,
                  ),
                  GestureDetector(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: Color(0xFFcecece),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: width / 11,
                              right: width / 11,
                              top: height / 150,
                              bottom: height / 150),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Dr Noorwail, Fatma\nNGHA',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              Icon(
                                Icons.arrow_forward,
                                color: Color(0xFF273B69),
                                size: 30,
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 1,
                          width: double.infinity,
                          color: Color(0xFFcecece),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {

                AwesomeDialog(
                  context: context,
                  animType: AnimType.scale,
                  dialogType: DialogType.success,
                  body: Center(child: Text(
                    'Reminder added successfully'
                    ,
                    style: TextStyle(fontStyle: FontStyle.normal),
                  ),),
                  title: 'This is Ignored',
                  desc:   'This is also Ignored',
                  btnOkOnPress: () {

                    Navigator.pop(context);
                    Navigator.pop(context);

                  },
                )..show();

              },
              child: Container(
                margin: EdgeInsets.only(top: height / 40),
                color: Color(0xFF00A1C8),
                width: double.infinity,
                height: height / 15,
                child: Center(
                    child: Text(
                  'Add a reminder',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
