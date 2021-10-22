import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';

class GameHistory extends StatefulWidget {
  const GameHistory({Key? key}) : super(key: key);

  @override
  _GameHistoryState createState() => _GameHistoryState();
}

class _GameHistoryState extends State<GameHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('Standard Bid History'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.calendar_today),
      ),
    );
  }
}
