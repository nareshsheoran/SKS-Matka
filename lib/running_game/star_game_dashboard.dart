import 'package:flutter/material.dart';
import 'package:SKS_Matka/Shared/constant.dart';
import 'package:SKS_Matka/Shared/routes.dart';

class StarGameDashboard extends StatefulWidget {
  const StarGameDashboard({Key? key}) : super(key: key);

  @override
  _StarGameDashboardState createState() => _StarGameDashboardState();
}

class _StarGameDashboardState extends State<StarGameDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('Starline'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image:
            DecorationImage(image: Images.bgImage, fit: BoxFit.cover)),
        child: Column(
          children: [
            Card(
              elevation: 2,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.SINGLE_DIGIT);
                              },
                              child: iconName('SINGLE DIGIT')),
                          Expanded(child: Container()),
                          InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.ODD_EVEN);
                              },
                              child: iconName('ODD EVEN')),
                        ],
                      ),
                      Row(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.SINGLE_PANA);
                              },
                              child: iconName('Single Pana')),
                          Expanded(child: Container()),
                          InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.DOUBLE_PANA);
                              },
                              child: iconName('Double Pana')),
                        ],
                      ),
                    Row(
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.TRIPLE_PANA);
                              },
                              child: iconName('Triple Pana')),
                          Expanded(child: Container()),
                          InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.SP_DP_TP);
                              },
                              child: iconName('SP, DP, TP')),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget iconName(String text) {
    return Container(
      height: 120,
      width: 120,
      child: Stack(
        children: [
          Icon(
            Icons.star,
            size: 120,
            color: Constant.primaryColor,
          ),
          Center(
              child: Text(
                text,
                style: TextStyle(fontSize: 8,color: Constant.textColor),
              ))
        ],
      ),
    );
  }

}
