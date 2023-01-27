import 'package:flutter/material.dart';
import 'package:untitled2/rx_review.dart';

class PrescritpionScreen extends StatelessWidget {
  const PrescritpionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF2a2773),
        title: const Text('Prescription'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 30,bottom: 25),
            child: const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xFF00a1c8),
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                hintText: 'Search',
              ),
            ),
          ),
          Expanded(
            child: ListView(
                shrinkWrap: true, 
                
                children: [
              Container(
                  margin: const EdgeInsets.only(left: 15, right: 15,top: 25),
                  child: Column(
                    children: [

                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: Offset(0, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, top: 15, bottom: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Bacterial infection',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.date_range_outlined,
                                        color: Color(0xFF2a2773),
                                        size: 20,

                                      ),
                                      SizedBox(width: 5,)
                                      ,Text('12 November 2022')
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 30, top: 20, bottom: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage('images/hos2.png'), height: 20,width: 20,),
                                      SizedBox(width: 5,)
                                      ,Text('Fakeeh hospital  ')
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return RxReview([
                                          [
                                              'amoxicillin',
                                            '100 mg',
                                            'Amoxicillin 200 mg/5 mL suspension for reconstitution',
                                            'Take 5 ml By Mouth three times a day ',
                                            '105 ml',
                                            'No Refills',
                                            '7 days'
                                          ],
                                        ],

                                            'Bacterial infection');
                                      }));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 8),
                                      child: const Text(
                                        'See Details',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF00a1c8),
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(15)),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: Offset(0, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, top: 15, bottom: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Osteoarthritis',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.date_range_outlined,
                                        color: Color(0xFF2a2773),
                                        size: 20,

                                      ),
                                      SizedBox(width: 5,)
                                      ,Text('26 November 2022')
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 30, top: 20, bottom: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage('images/hos2.png'), height: 20,width: 20,),
                                      SizedBox(width: 5,)
                                      ,Text('NGHA                    ')
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                            return RxReview([
                                              [
                                                'Ibuprofen',
                                                '600 mg',
                                                'Ibuprofen 600 mg tablet',
                                                'Take 1 tablet with a meal when nedded ',
                                                '30 tablet',
                                                'No Refills',
                                                '1 month'
                                              ],
                                              [
                                                'Celecoxib',
                                                '200 mg',
                                                'Celecoxib 200 mg tablet',
                                                'Take 1 tablet with a meal when nedded ',
                                                '30 tablet',
                                                'No Refills',
                                                '1 month'
                                              ],
                                            ],

                                                'Osteoarthritis');;
                                          }));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 8),
                                      child: const Text(
                                        'See Details',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF00a1c8),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: Offset(0, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, top: 15, bottom: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Gastroesophageal \nreflux',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.date_range_outlined,
                                        color: Color(0xFF2a2773),
                                        size: 20,

                                      ),
                                      SizedBox(width: 5,)
                                      ,Text('5 November 2022')
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 30, top: 20, bottom: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage('images/hos2.png'), height: 20,width: 20,),
                                      SizedBox(width: 5,)
                                      ,Text('Bugshan hospital')
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                            return RxReview([
                                              [
                                                'Esomeprazole',
                                                '20 mg',
                                                'Esomeprazole 20 mg per tablet',
                                                'Take 1 tablet before a meal twice a daily ',
                                                '14 tablet',
                                                'No Refills',
                                                '7 days'
                                              ],
                                            ],

                                                'Osteoarthritis');;
                                          }));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 8),
                                      child: const Text(
                                        'See Details',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF00a1c8),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: Offset(0, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, top: 15, bottom: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Diabetes melitus',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.date_range_outlined,
                                        color: Color(0xFF2a2773),
                                        size: 20,

                                      ),
                                      SizedBox(width: 5,)
                                      ,Text('26 November 2022')
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 30, top: 20, bottom: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage('images/hos2.png'), height: 20,width: 20,),
                                      SizedBox(width: 5,)
                                      ,Text('Fakeeh hospital   ')
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  GestureDetector(
                                    onTap: () {

                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 8),
                                      child: const Text(
                                        'See Details',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF00a1c8),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 30),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: Offset(0, 5), // changes position of shadow
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 30, top: 15, bottom: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    'Bladder infection',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(fontSize: 20),
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.date_range_outlined,
                                        color: Color(0xFF2a2773),
                                        size: 20,

                                      ),
                                      SizedBox(width: 5,)
                                      ,Text('26 November 2022')
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 30, top: 20, bottom: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(
                                    children: [
                                      Image(image: AssetImage('images/hos2.png'), height: 20,width: 20,),
                                      SizedBox(width: 5,)
                                      ,Text('Fakeeh hospital  ')
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8, vertical: 8),
                                      child: const Text(
                                        'See Details',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 12),
                                      ),
                                      decoration: const BoxDecoration(
                                        color: Color(0xFF00a1c8),
                                        borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            ]),
          ),
        ],
      ),
    );
  }
}
