import 'package:flutter/material.dart';
import 'package:SKS_Matka/Shared/constant.dart';

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
body: Container(
  height: MediaQuery.of(context).size.height,
  width: MediaQuery.of(context).size.width,
  decoration: BoxDecoration(
      image:
      DecorationImage(image: Images.bgImage, fit: BoxFit.cover)),),
    );
  }
}
