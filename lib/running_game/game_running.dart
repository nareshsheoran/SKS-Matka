import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';

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
      body: SingleChildScrollView(
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
                                buildIcon(),
                                Expanded(child: Container()),
                                buildIcon(),
                              ],
                            ),
                            Row(
                              children: [
                                buildIcon(),
                                Expanded(child: Container()),
                                buildIcon(),
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
                                buildIcon(),
                                Expanded(child: Container()),
                                buildIcon(),
                              ],
                            ),
                            Row(
                              children: [
                                buildIcon(),
                                Expanded(child: Container()),
                                buildIcon(),
                              ],
                            ),
                            Row(
                              children: [
                                buildIcon(),
                                Expanded(child: Container()),
                                buildIcon(),
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
                                buildIcon(),
                                Expanded(child: Container()),
                                buildIcon(),
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
    );
  }

  Icon buildIcon() {
    return Icon(
      Icons.star,
      size: 120,
      color: Constant.primaryColor,
    );
  }
}
