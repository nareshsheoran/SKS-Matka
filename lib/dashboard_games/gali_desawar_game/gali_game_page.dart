import 'package:SKS_Matka/Shared/constant.dart';
import 'package:SKS_Matka/Shared/routes.dart';
import 'package:SKS_Matka/model/gali_game_info_model.dart';
import 'package:flutter/material.dart';

class GaliGamePage extends StatefulWidget {
  const GaliGamePage({Key? key}) : super(key: key);

  @override
  _GaliGamePageState createState() => _GaliGamePageState();
}

class _GaliGamePageState extends State<GaliGamePage> {
  late List<GaliGameInfoModel> galiGameInfoModelList;

  @override
  void initState() {
    loadGaliGameOnfoList();
    super.initState();
  }

  void loadGaliGameOnfoList() {
    galiGameInfoModelList = [
      GaliGameInfoModel(
          name: 'DESAWAR-DS',
          number: '81',
          time: '04:30 AM',
          status: 'CLOSED',
          code: '00:00:00',
          icon: Constant.icon),
      GaliGameInfoModel(
          name: 'FARIDABAD-FB',
          number: '**',
          time: '05:45 PM',
          status: 'CLOSED',
          code: '00:00:00',
          icon: Constant.icon),
      GaliGameInfoModel(
          name: 'GAZIYABAD-GB',
          number: '**',
          time: '08:30 PM',
          status: 'CLOSED',
          code: '00:00:00',
          icon: Constant.icon),
      GaliGameInfoModel(
          name: 'DESAWAR-DS',
          number: '81',
          time: '04:30 AM',
          status: 'CLOSED',
          code: '00:00:00',
          icon: Constant.icon),
      GaliGameInfoModel(
          name: 'DESAWAR-DS',
          number: '81',
          time: '04:30 AM',
          status: 'CLOSED',
          code: '00:00:00',
          icon: Constant.icon),
      GaliGameInfoModel(
          name: 'FARIDABAD-FB',
          number: '**',
          time: '05:45 PM',
          status: 'CLOSED',
          code: '00:00:00',
          icon: Constant.icon),
      GaliGameInfoModel(
          name: 'GAZIYABAD-GB',
          number: '**',
          time: '08:30 PM',
          status: 'CLOSED',
          code: '00:00:00',
          icon: Constant.icon),
      GaliGameInfoModel(
          name: 'DESAWAR-DS',
          number: '81',
          time: '04:30 AM',
          status: 'CLOSED',
          code: '00:00:00',
          icon: Constant.icon),
    ];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.primaryColor,
        title: Text(''
            'Gali Desawar Game'),
        actions: [Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Icon(Constant.appIcon),
        )],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(image: Images.bgImage,
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Constant.primaryColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Text(
                          'Left Digit-rs10-90,Right Digit-rs10-90',
                          style: TextStyle(color: Constant.textColor),
                        ),
                        Text(
                          'Jodi Digit-rs10-900',
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
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, Routes.GALI_GAME_BID_HISTORY);
                      },
                      child: Container(
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
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.GALI_GAME_RESULT);
                      },
                      child: Container(
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
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.GALI_GAME_CHART);
                      },
                      child: Container(
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
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 48),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      itemCount: galiGameInfoModelList.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (BuildContext context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            color: Constant.primaryColor,
                            height: 120,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        children: [
                                          Text(
                                            galiGameInfoModelList[index].name,
                                            style: TextStyle(
                                                color: Constant.textColor),
                                          ),
                                          SizedBox(
                                            height: 4,
                                          ),
                                          Text(
                                            galiGameInfoModelList[index].number,
                                            style: TextStyle(
                                                color: Constant.textColor),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(12, 0, 12, 8),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(2.0)),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              galiGameInfoModelList[index].time,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Column(
                                              children: [
                                                Text(
                                                  galiGameInfoModelList[index]
                                                      .status,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 16,
                                                      color: Constant
                                                          .primaryColor),
                                                ),
                                                Text(
                                                  galiGameInfoModelList[index]
                                                      .code,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Navigator.pushNamed(
                                                    context,
                                                    Routes
                                                        .GALI_GAME_RESULT_DASHBOARD);
                                              },
                                              child: Icon(
                                                galiGameInfoModelList[index]
                                                    .icon,
                                                size: 32,
                                              ),
                                            ),
                                          ],
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
