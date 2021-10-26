import 'package:flutter/material.dart';
import 'package:SKS_Matka/Shared/constant.dart';

class GaliGameRightDigit extends StatefulWidget {
  const GaliGameRightDigit({Key? key}) : super(key: key);

  @override
  _GaliGameRightDigitState createState() => _GaliGameRightDigitState();
}

class _GaliGameRightDigitState extends State<GaliGameRightDigit> {
  TextEditingController bidDigitController = TextEditingController();
  TextEditingController bidPointController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('Right List'),
      ),body: SingleChildScrollView(
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
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Date',
                              style: TextStyle(
                                  fontSize: 24, color: Constant.textColor),
                            ),
                          ),
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
                                hintText: ' Enter Digit',
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
                                hintText: ' Enter Point'),
                          )),
                      SizedBox(
                        height: 8,
                      ),
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
                              child: Text('BIDDING CLOSED',style: TextStyle(fontWeight: FontWeight.bold),),
                            ),
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
    ),
    );
  }
}
