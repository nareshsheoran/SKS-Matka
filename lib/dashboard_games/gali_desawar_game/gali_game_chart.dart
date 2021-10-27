import 'package:flutter/material.dart';
import 'package:SKS_Matka/Shared/constant.dart';

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
