import 'package:flutter/material.dart';
import 'package:SKS_Matka/Shared/constant.dart';

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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image:
            DecorationImage(image: Images.bgImage, fit: BoxFit.cover)),
      child: SingleChildScrollView(),),
    );
  }
}
