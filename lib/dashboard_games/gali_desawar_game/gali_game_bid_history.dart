import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';

class GaliGameBidHistory extends StatefulWidget {
  const GaliGameBidHistory({Key? key}) : super(key: key);

  @override
  _GaliGameBidHistoryState createState() => _GaliGameBidHistoryState();
}

class _GaliGameBidHistoryState extends State<GaliGameBidHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('Gali Desawar Bid History'),
      ),

    );
  }
}
