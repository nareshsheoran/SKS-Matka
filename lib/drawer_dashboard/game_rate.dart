import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';

class GameRate extends StatefulWidget {
  const GameRate({Key? key}) : super(key: key);

  @override
  _GameRateState createState() => _GameRateState();
}

class _GameRateState extends State<GameRate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Constant.appBarColor,
        title: Text('Game Rate'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      standardRate('Single Digit', '10', '90');
                      standardRate('JODI Digit', '10', '900');
                      standardRate('Single PANA', '10', '1400');
                      standardRate('DOUBLE PANA', '10', '2800');
                      standardRate('TRIPLE Digit', '10', '7000');
                      standardRate('HALF SANGAM', '10', '10000');
                      standardRate('FULL SANGAM', '10', '100000');
                      standardRate('RED BRACKET', '10', '90');
                    },
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 3.3,
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      )),
                      child: Center(
                        child: Text('STANDARD',style: TextStyle(
                          fontSize: 12
                        ),),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      starlineRate('SINGLE DIGIT', "10", '100');
                      starlineRate('SINGLE PANA', '10', '1600');
                      starlineRate('DOUBLE PANA', '10', '3200');
                      starlineRate('TRIPLE PANA', '10', '7000');
                    },
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 3.3,
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      )),
                      child: Center(
                        child: Text('STARLINE',style: TextStyle(
                            fontSize: 12
                        ),),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      galiDesawarRate('LEFT DIGIT', '10', '90');
                      galiDesawarRate('RIGHT DIGIT', '10', '90');
                      galiDesawarRate('JODI DIGIT', '10', '900');
                    },
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 3.3,
                      decoration: BoxDecoration(
                          border: Border.all(
                        color: Colors.grey,
                        width: 2,
                      )),
                      child: Center(
                        child: Text('GALI DESAWAR',style: TextStyle(
                            fontSize: 12
                        ),),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Container standardRate(String text, String no1, String no2) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Constant.primaryColor, borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Constant.textColor),
          ),
          Row(
            children: [Text(no1), Text(no2)],
          )
        ]),
      ),
    );
  }

  Container starlineRate(String text, String no1, String no2) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Constant.primaryColor, borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Constant.textColor),
          ),
          Row(
            children: [Text(no1), Text(no2)],
          )
        ]),
      ),
    );
  }

  Container galiDesawarRate(String text, String no1, String no2) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Constant.primaryColor, borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Constant.textColor),
          ),
          Row(
            children: [Text(no1), Text(no2)],
          )
        ]),
      ),
    );
  }
}
