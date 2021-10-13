import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';
import 'package:kabir_app/model/star_line_info_model.dart';

class StarLinePage extends StatefulWidget {
  const StarLinePage({Key? key}) : super(key: key);

  @override
  _StarLinePageState createState() => _StarLinePageState();
}

class _StarLinePageState extends State<StarLinePage> {
  late List<StarLineInfoModel> starLineInfoModelList;

  @override
  void initState() {
    loadStarLineGameInfoList();
    super.initState();
  }

  void loadStarLineGameInfoList() {
    starLineInfoModelList = [
      StarLineInfoModel(
          time1: '10:00 AM',
          code: '900-9',
          status: 'CLOSED',
          time2: '00:00:00',
          icon: Constant.icon),
      StarLineInfoModel(
          time1: '11:00 AM',
          code: '550-90',
          status: 'CLOSED',
          time2: '00:00:00',
          icon: Constant.icon),
      StarLineInfoModel(
          time1: '12:00 PM',
          code: '123-6',
          status: 'CLOSED',
          time2: '00:00:00',
          icon: Constant.icon),
      StarLineInfoModel(
          time1: '01:00 PM',
          code: '356-4',
          status: 'CLOSED',
          time2: '00:00:00',
          icon: Constant.icon),
      StarLineInfoModel(
          time1: '02:00 PM',
          code: '370-0',
          status: 'CLOSED',
          time2: '00:00:00',
          icon: Constant.icon),
          StarLineInfoModel(
          time1: '10:00 AM',
          code: '900-9',
          status: 'CLOSED',
          time2: '00:00:00',
          icon: Constant.icon),
      StarLineInfoModel(
          time1: '11:00 AM',
          code: '550-90',
          status: 'CLOSED',
          time2: '00:00:00',
          icon: Constant.icon),
      StarLineInfoModel(
          time1: '12:00 PM',
          code: '123-6',
          status: 'CLOSED',
          time2: '00:00:00',
          icon: Constant.icon),
      StarLineInfoModel(
          time1: '01:00 PM',
          code: '356-4',
          status: 'CLOSED',
          time2: '00:00:00',
          icon: Constant.icon),
      StarLineInfoModel(
          time1: '02:00 PM',
          code: '370-0',
          status: 'CLOSED',
          time2: '00:00:00',
          icon: Constant.icon),
    ];
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Starline Game'),
        backgroundColor: Constant.primaryColor,
        actions: [Icon(Icons.wallet_giftcard)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width,
                color: Constant.primaryColor,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(2, 16, 8, 16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Single Digit-Rs10- Rs100, Single Pana- Rs10-Rs1600',
                        style: TextStyle(color: Constant.textColor),
                      ),
                      SizedBox(height: 4,),
                      Text(
                        'Double Digit-Rs10- Rs3200 ,Triple Pana- Rs10-Rs7000',
                        style: TextStyle(color: Constant.textColor),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 28,
                    decoration: BoxDecoration(
                      color: Constant.primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(2.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Bid History',
                        style: TextStyle(color: Constant.textColor),
                      ),
                    ),
                  ),
                  Container(
                    height: 28,
                    decoration: BoxDecoration(
                      color: Constant.primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(2.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Game Result',
                        style: TextStyle(color: Constant.textColor),
                      ),
                    ),
                  ),
                  Container(
                    height: 28,
                    decoration: BoxDecoration(
                      color: Constant.primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(2.0)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        'Game Chart',
                        style: TextStyle(color: Constant.textColor),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 88),
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      itemCount: starLineInfoModelList.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                          child: Container(
                            color: Colors.green,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        starLineInfoModelList[index].time1,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        starLineInfoModelList[index].code,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Constant.primaryColor),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        starLineInfoModelList[index].status,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Constant.primaryColor),
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        starLineInfoModelList[index].time2,
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Icon(
                                        starLineInfoModelList[index].icon,
                                        size: 24,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      })),
            )
          ],
        ),
      ),
    );
  }
}
