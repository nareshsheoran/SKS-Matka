import 'package:flutter/material.dart';
import 'package:SKS_Matka/Shared/constant.dart';

class SpDpTp extends StatefulWidget {
  const SpDpTp({Key? key}) : super(key: key);

  @override
  _SpDpTpState createState() => _SpDpTpState();
}

class _SpDpTpState extends State<SpDpTp> {
  TextEditingController bidPointsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('SP DP TP'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image:
              DecorationImage(image: Images.bgImage, fit: BoxFit.cover)),
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
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width /
                                                  3,
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
                                        Container(
                                          width:
                                              MediaQuery.of(context).size.width /
                                                  3,
                                          decoration: BoxDecoration(
                                              color: Colors.grey[200]),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4),
                              child: Text(
                                'Bid Ank',
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
                                    controller: bidPointsController,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding:
                                          EdgeInsets.only(bottom: 8, left: 8),
                                      hintText: ' Enter  Digit',
                                    ),
                                  ),
                                )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 64,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              // borderRadius: BorderRadius.circular(5),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: Colors.black,
                                width: 1.5,
                              )),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 4,
                                  decoration:
                                      BoxDecoration(color: Colors.grey[200]),
                                  child: Center(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(2, 0, 2, 0),
                                      child: Text(
                                        'SINGLE PANA',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width / 4,
                                  decoration:
                                      BoxDecoration(color: Colors.grey[200]),
                                  child: Center(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(2, 0, 2, 0),
                                      child: Text(
                                        'DOUBLE PANA',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width / 4,
                                  decoration:
                                      BoxDecoration(color: Colors.grey[200]),
                                  child: Center(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(2, 0, 2, 0),
                                      child: Text(
                                        'TRIPLE PANA',
                                        style: TextStyle(
                                            fontSize: 12, color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 8),
                        child: Text(
                          'Bid Points',
                          style: TextStyle(fontWeight: FontWeight.bold),
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
                            'Bid Points',
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
                                controller: bidPointsController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.only(bottom: 8, left: 8),
                                  hintText: ' Enter  Digit',
                                ),
                              ),
                            )),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.black,
                                width: 1.5,
                              ),
                            ),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('ADD BID',style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
