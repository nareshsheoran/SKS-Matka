import 'package:flutter/material.dart';
import 'package:SKS_Matka/Shared/constant.dart';

class StarGameChart extends StatefulWidget {
  const StarGameChart({Key? key}) : super(key: key);

  @override
  _StarGameChartState createState() => _StarGameChartState();
}

class _StarGameChartState extends State<StarGameChart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('Starline Game Result Chart'),
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
