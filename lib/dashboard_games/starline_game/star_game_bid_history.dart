import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';

class StarGameBidHistory extends StatefulWidget {
  const StarGameBidHistory({Key? key}) : super(key: key);

  @override
  _StarGameBidHistoryState createState() => _StarGameBidHistoryState();
}

class _StarGameBidHistoryState extends State<StarGameBidHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('Starline Games'),
      ),
    );
  }
}
