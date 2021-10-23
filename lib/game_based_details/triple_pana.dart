import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';

class TriplaPana extends StatefulWidget {
  const TriplaPana({Key? key}) : super(key: key);

  @override
  _TriplaPanaState createState() => _TriplaPanaState();
}

class _TriplaPanaState extends State<TriplaPana> {
  TextEditingController bidDigitController = TextEditingController();
  TextEditingController bidPointController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('Triple Pana'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Constant.primaryColor,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Colors.black),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Balance: 0',
                              style: TextStyle(
                                  fontSize: 24, color: Constant.textColor),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 2, 8, 8),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.black),
                        child: Column(
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  'Date',
                                  style: TextStyle(
                                      fontSize: 24, color: Constant.textColor),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(4, 0, 4, 4),
                              child: Container(
                                decoration: BoxDecoration(color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(width: MediaQuery.of(context).size.width/3,
                                        decoration:
                                        BoxDecoration(color: Colors.black),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Text(
                                              'OPEN',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Constant.textColor),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(width: MediaQuery.of(context).size.width/3,
                                        decoration:
                                        BoxDecoration(color: Colors.grey[200]),
                                        child: Center(
                                          child: Padding(
                                            padding: const EdgeInsets.all(16.0),
                                            child: Text(
                                              'Close',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Constant.primaryColor),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          'Bid Digit',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              // borderRadius: BorderRadius.circular(5),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Colors.black,
                                width: 1.5,
                              )),
                          child: Center(
                            child: TextFormField(
                              controller: bidDigitController,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                EdgeInsets.only(bottom: 8, left: 8),
                                hintText: ' Enter  Digit',
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Text(
                          'Bid Point',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              // borderRadius: BorderRadius.circular(5),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Colors.black,
                                width: 1.5,
                              )),
                          child: TextFormField(
                            controller: bidPointController,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                contentPadding:
                                EdgeInsets.only(bottom: 8, left: 8),
                                hintText: ' Enter Close Pana'),
                          )),


                      Container(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text('ADD BID'),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
