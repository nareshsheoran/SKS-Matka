import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';
import 'package:kabir_app/Shared/routes.dart';

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
        title: Text('gali_game_result_dashboard'),
      ),
      body: Card(
        elevation: 2,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.9,
          child: Column(
            children: [
              Row(
                children: [],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: InkWell(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, Routes.GALI_GAME_LEFT_DIGIT);
                              },
                              child: iconName('Left Digit ')),
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
