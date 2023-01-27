import 'package:flutter/material.dart';
import 'package:untitled2/DoctorScreen.dart';
import 'package:untitled2/HistoryScreen.dart';
import 'package:untitled2/prescription.dart';
import 'package:untitled2/rx_review.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var size, height, width;
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2a2773),
        elevation: 0.0,
        title: const Text('Main'),
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        height: height / 13,
        decoration: BoxDecoration(
          color: Color(0xFFefefeb),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ? const Icon(
                      Icons.home,
                      color: Color(0xFF2a2773),
                      size: 35,
                    )
                  : const Icon(
                      Icons.home_outlined,
                      color: Color(0xFF2a2773),
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ? const Icon(
                      Icons.date_range_outlined,
                      color: Color(0xFF2a2773),
                      size: 35,
                    )
                  : const Icon(
                      Icons.date_range_outlined,
                      color: Color(0xFF2a2773),
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ? const Icon(
                      Icons.chat_rounded,
                      color: Color(0xFF2a2773),
                      size: 35,
                    )
                  : const Icon(
                      Icons.chat_outlined,
                      color: Color(0xFF2a2773),
                      size: 35,
                    ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: pageIndex == 3
                  ? const Icon(
                      Icons.person,
                      color: Color(0xFF2a2773),
                      size: 35,
                    )
                  : const Icon(
                      Icons.person_outline,
                      color: Color(0xFF2a2773),
                      size: 35,
                    ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: height / 6.5,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF2b2873),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Hello, Ethar',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(
                        Icons.search,
                        color: Color(0xFF2b2873),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      hintText: 'Search doctors, hospitals, specialities...',
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height / 17,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: height / 6.5,
                width: width / 3.5,
                decoration: BoxDecoration(
                    color: Color(0xFF2b2873),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage("images/doctoricon.png"),
                      height: 50,
                    ),
                    Text(
                      'Doctor',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontFamily: AutofillHints.countryName),
                    )
                  ],
                ),
              ),
              Container(
                height: height / 6.5,
                width: width / 3.5,
                decoration: BoxDecoration(
                    color: Color(0xFFf5f5f3),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage("images/rate.png"),
                      height: 50,
                    ),
                    Text(
                      'Appointments',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF08a0c6),
                          fontFamily: AutofillHints.countryName),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return PrescritpionScreen();
                  }));
                },
                child: Container(
                  height: height / 6.5,
                  width: width / 3.5,
                  decoration: BoxDecoration(
                      color: Color(0xFFf5f5f3),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage("images/medi.png"),
                        height: 50,
                      ),
                      Text(
                        'Prescriptions',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF08a0c6),
                            fontFamily: AutofillHints.countryName),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height / 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: height / 6.5,
                width: width / 3.5,
                decoration: BoxDecoration(
                    color: Color(0xFFf5f5f3),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage("images/car.png"),
                      height: 50,
                    ),
                    Text(
                      'Emergency',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF08a0c6),
                          fontFamily: AutofillHints.countryName),
                    )
                  ],
                ),
              ),
              Container(
                height: height / 6.5,
                width: width / 3.5,
                decoration: BoxDecoration(
                    color: Color(0xFFf5f5f3),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: AssetImage("images/home.png"),
                      height: 50,
                    ),
                    Text(
                      'Hospital',
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xFF08a0c6),
                          fontFamily: AutofillHints.countryName),
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return HistoryScreen();
                  }));
                },
                child: Container(
                  height: height / 6.5,
                  width: width / 3.5,
                  decoration: BoxDecoration(
                      color: Color(0xFFf5f5f3),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage("images/hisicon.png"),
                        height: 50,
                      ),
                      Text(
                        'Medical History',
                        style: TextStyle(
                            fontSize: 15,
                            color: Color(0xFF08a0c6),
                            fontFamily: AutofillHints.countryName),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: height / 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              'Top Rated Doctors',
              style: TextStyle(
                color: Color(0xFF2b2873),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 30, top: 15, bottom: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DoctorScreen();
                      }));
                    },
                    child: Container(
                      child: Image(image: AssetImage('images/buttonDoc.png')),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DoctorScreen();
                      }));
                    },
                    child: Container(
                      child: Image(image: AssetImage('images/moh.png')),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DoctorScreen();
                      }));
                    },
                    child: Container(
                      child: Image(image: AssetImage('images/fatema.png')),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LoadingScreen2 extends StatefulWidget {
  @override
  _LoadingScreen2State createState() => _LoadingScreen2State();
}

class _LoadingScreen2State extends State<LoadingScreen2> {
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

    await Future.delayed(const Duration(seconds: 1), () {});

    setState(() {
      _isLoading = false; // your loder will stop to finish after the data fetch
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: _isLoading
              ? Center(
                  child:
                      CircularProgressIndicator()) // this will show when loading is true
              : HomeScreen() // this will show when loading is false
          ),
    );
  }
}
