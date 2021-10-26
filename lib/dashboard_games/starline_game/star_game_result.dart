import 'package:flutter/material.dart';
import 'package:SKS_Matka/Shared/constant.dart';

class StarGameResult extends StatefulWidget {
  const StarGameResult({Key? key}) : super(key: key);

  @override
  _StarGameResultState createState() => _StarGameResultState();
}

class _StarGameResultState extends State<StarGameResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('Result History'),
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
