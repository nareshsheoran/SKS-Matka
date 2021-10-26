import 'package:flutter/material.dart';

import 'package:SKS_Matka/Shared/constant.dart';
import 'package:SKS_Matka/Shared/routes.dart';

class CalenderResultChart extends StatefulWidget {
  const CalenderResultChart({Key? key}) : super(key: key);

  @override
  _CalenderResultChartState createState() => _CalenderResultChartState();
}

class _CalenderResultChartState extends State<CalenderResultChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('Result Chart'),
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
