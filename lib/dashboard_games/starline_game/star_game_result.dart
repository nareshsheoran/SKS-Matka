import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';

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
    );
  }
}
