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
        title: Text('Game'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              color: Constant.primaryColor,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.green,
                        height: 64,
                        child: Center(
                          child: Text(
                            'GAME DIGIT BASED',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
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
            Container(
              width: MediaQuery.of(context).size.width,
              color: Constant.primaryColor,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width ,
                        color: Colors.green,
                        height: 64,
                        child: Center(
                          child: Text(
                            'GAME DIGIT BASED',
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
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
          ],
        ),
      ),
    );
  }

  Icon buildIcon() {
    return Icon(
      Icons.star,
      size: 120,
    );
  }
}
