import 'package:flutter/material.dart';
import 'package:SKS_Matka/Shared/constant.dart';
import 'package:SKS_Matka/Shared/routes.dart';

class GameRunning extends StatefulWidget {
  const GameRunning({Key? key}) : super(key: key);

  @override
  _GameRunningState createState() => _GameRunningState();
}

class _GameRunningState extends State<GameRunning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('Game'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(image: Images.bgImage, fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Card(
                  elevation: 2,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 2.2,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.grey[300],
                                height: 64,
                                child: Center(
                                  child: Text(
                                    'GAME DIGIT BASED',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, Routes.SINGLE_DIGIT);
                                      },
                                      child: iconName('SINGLE DIGIT')),
                                  Expanded(child: Container()),
                                  InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, Routes.ODD_EVEN);
                                      },
                                      child: iconName('ODD EVEN')),
                                ],
                              ),
                              Row(
                                children: [
                                  InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, Routes.JODI_DIGIT);
                                      },
                                      child: iconName('JODI DIGIT')),
                                  Expanded(child: Container()),
                                  InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, Routes.RED_BRACKET);
                                      },
                                      child: iconName('RED BRACKET')),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Card(
                  elevation: 2,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.grey[300],
                                height: 64,
                                child: Center(
                                  child: Text(
                                    'GAME PANA BASED',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, Routes.SINGLE_PANA);
                                      },
                                      child: iconName('SINGLE PANA')),
                                  Expanded(child: Container()),
                                  InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, Routes.DOUBLE_PANA);
                                      },
                                      child: iconName('DOUBLE PANA')),
                                ],
                              ),
                              Row(
                                children: [
                                  InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, Routes.TRIPLE_PANA);
                                      },
                                      child: iconName('TRIPLE PANA')),
                                  Expanded(child: Container()),
                                  InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, Routes.SP_DP_TP);
                                      },
                                      child: iconName('SP,DP.TP')),
                                ],
                              ),
                              Row(
                                children: [
                                  InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, Routes.SP_MOTORS);
                                      },
                                      child: iconName('SP MOTORS')),
                                  Expanded(child: Container()),
                                  InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, Routes.DP_MOTORS);
                                      },
                                      child: iconName('DP MOTORS')),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Card(
                  elevation: 2,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 3.7,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors.grey[300],
                                height: 64,
                                child: Center(
                                  child: Text(
                                    'GAME SANGAM BASED',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  InkWell(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, Routes.HALF_SANGAM);
                                      },
                                      child: iconName('HALF SANGAM ')),
                                  Expanded(child: Container()),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, Routes.FULL_SANGAM);
                                    },
                                    child: iconName('FULL SANGAM '),
                                  )
                                ],
                              ),
                            ],
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
      ),
    );
  }

  Widget iconName(String text) {
    return Container(
      height: 120,
      width: 120,
      child: Stack(
        children: [
          Icon(
            Icons.star,
            size: 120,
            color: Constant.primaryColor,
          ),
          Center(
              child: Text(
            text,
            style: TextStyle(fontSize: 8, color: Constant.textColor),
          ))
        ],
      ),
    );
  }
}
