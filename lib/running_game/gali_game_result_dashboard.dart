import 'package:flutter/material.dart';
import 'package:SKS_Matka/Shared/constant.dart';
import 'package:SKS_Matka/Shared/routes.dart';

class GaliGameResultDashboard extends StatefulWidget {
  const GaliGameResultDashboard({Key? key}) : super(key: key);

  @override
  _GaliGameResultDashboardState createState() =>
      _GaliGameResultDashboardState();
}

class _GaliGameResultDashboardState extends State<GaliGameResultDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('Gali Game Result Dashboard'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image:
            DecorationImage(image: Images.bgImage, fit: BoxFit.cover)),
        child: Card(
          elevation: 2,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.9,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, Routes.GALI_GAME_LEFT_DIGIT);
                                  },
                                  child: iconName('LEFT DIGIT')),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.pushNamed(
                                      context, Routes.GALI_GAME_RIGHT_DIGIT);
                                },
                                child: iconName('RIGHT DIGIT')),
                            Expanded(child: Container()),
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.GALI_GAME_JODI_DIGIT);
                              },
                              child: iconName('JODI DIGIT'),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
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
            style: TextStyle(fontSize: 8, color: Constant.textColor),
          ))
        ],
      ),
    );
  }
}
