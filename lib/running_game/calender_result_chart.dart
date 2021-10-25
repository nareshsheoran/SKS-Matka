import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';

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

    );
  }
}
