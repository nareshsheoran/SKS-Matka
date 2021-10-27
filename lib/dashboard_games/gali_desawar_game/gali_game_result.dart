import 'package:flutter/material.dart';
import 'package:SKS_Matka/Shared/constant.dart';

class GaliGameResult extends StatefulWidget {
  const GaliGameResult({Key? key}) : super(key: key);

  @override
  _GaliGameResultState createState() => _GaliGameResultState();
}

class _GaliGameResultState extends State<GaliGameResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('Gali Desawar Result History'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(image: Images.bgImage, fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                      color: Constant.primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(4.0))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                'DESAWAR -DS',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Constant.textColor),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(child: Container()),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Constant.textColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(2.0))),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(30, 4, 30, 4),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text('time1'),
                                    Text('time2'),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      'status',
                                      style: TextStyle(
                                          color: Constant.primaryColor),
                                    ),
                                    Text('time'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
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
