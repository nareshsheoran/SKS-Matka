import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';

class GaliGameChart extends StatefulWidget {
  const GaliGameChart({Key? key}) : super(key: key);

  @override
  _GaliGameChartState createState() => _GaliGameChartState();
}

class _GaliGameChartState extends State<GaliGameChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('Gali Desawar Rsult Chart'),
      ),
    );
  }
}
