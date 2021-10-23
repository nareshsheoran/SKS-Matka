import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';

class GaliGameResult extends StatefulWidget {
  const GaliGameResult({Key? key}) : super(key: key);

  @override
  _GaliGameResultState createState() => _GaliGameResultState();
}

class _GaliGameResultState extends State<GaliGameResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Constant.appBarColor,
      title: Text('Gali Desawar Result History'),
    ),
    body: Column(
      children: [
        Container(
          child: Column(
            children: [
              Row(
                children: [
                  Center(
                    child: Text('DESAWARN -DS'),
                  )
                ],
              ),
              Container(
                decoration: BoxDecoration(color: Constant.textColor,
                    borderRadius: BorderRadius.all(
                        Radius.circular(2.0))),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 4, 30, 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text('homeInfoModel.time1'),
                          Text('homeInfoModel.time2'),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            'homeInfoModel.status',
                            style: TextStyle(color: Constant.primaryColor),
                          ),
                          Text('homeInfoModel.time'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
    );
  }
}
