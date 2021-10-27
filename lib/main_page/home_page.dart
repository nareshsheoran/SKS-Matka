import 'dart:convert';

import 'package:SKS_Matka/Shared/constant.dart';
import 'package:SKS_Matka/Shared/routes.dart';
import 'package:SKS_Matka/api_details/predefined_num_api.dart';
import 'package:SKS_Matka/api_details/slide_details_api.dart';
import 'package:SKS_Matka/api_details/standard_game_api.dart';
import 'package:SKS_Matka/viewmodel/home_page_viewmodel.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:scoped_model/scoped_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomePageInfoViewModel viewModel;

  List<Slides> slidesList = [];
  List<StandardGame> standardGameList = [];
  List<Numbers> numbersList = [];

  void initState() {
    viewModel = HomePageInfoViewModel();
    init();
    super.initState();
  }

  Future fetchStandardGameName() async {
    Uri myUri = Uri.parse(NetworkUtil.getStandardGameNameUrl);
    Response response = await get(myUri);
    if (response.statusCode == 200) {
      Map<String, dynamic> map =
          jsonDecode(response.body) as Map<String, dynamic>;
      StandardGameApi standardGameApi = StandardGameApi.fromJson(map);
      standardGameList = standardGameApi.standardGame;
      setState(() {});
    }
  }

  Future fetchPredefinedNumberData() async {
    Uri myUri = Uri.parse(NetworkUtil.getPredefinedNumberUrl);
    Response response = await get(myUri);
    if (response.statusCode == 200) {
      Map<String, dynamic> map =
          jsonDecode(response.body) as Map<String, dynamic>;
      PredefinedNumberApi predefinedNumberApi =
          PredefinedNumberApi.fromJson(map);
      numbersList = predefinedNumberApi.numbers;
      setState(() {});
    }
  }

  Future fetchSliderData() async {
    Uri myUri = Uri.parse(NetworkUtil.getSliderUrl);
    Response response = await get(myUri);
    if (response.statusCode == 200) {
      Map<String, dynamic> map =
          jsonDecode(response.body) as Map<String, dynamic>;
      SlideApiDetails slidesApiDetails = SlideApiDetails.fromJson(map);
      slidesList = slidesApiDetails.slides;
      setState(() {});
    }
  }

  Future init() async {
    fetchStandardGameName();
    fetchPredefinedNumberData();
    fetchSliderData();
    // standardGameList = await GameService.getInstance().fetchStandardGameName();
    // setState(() {});
    //
    // slidesList = await SliderService.getInstance().fetchSliderData();
    // setState(() {});
    //
    // numbersList =
    //     await PreDefinedService.getInstance().fetchPredefinedNumberData();
    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModel<HomePageInfoViewModel>(
      model: viewModel,
      child: ScopedModelDescendant<HomePageInfoViewModel>(
          builder: (context, child, model) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Constant.appBarColor,
            title: Text(
              'SKS MATKA',
              style: TextStyle(color: Colors.white),
            ),
            actions: [
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.APP_WALLET);
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Icon(Constant.appIcon),
                  )),
            ],
          ),
          drawer: buildDrawer(context),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: Images.bgImage, fit: BoxFit.cover)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.whatshot,
                                  size: 40,
                                  color: Constant.primaryColor,
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Icon(
                                  Icons.message_outlined,
                                  size: 40,
                                  color: Constant.primaryColor,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                            child: Container(
                                height: 96,
                                width: MediaQuery.of(context).size.width / 1.5,
                                color: Colors.white,
                                child: CarouselSlider.builder(
                                  options: CarouselOptions(
                                    aspectRatio: 2.0,
                                    enlargeCenterPage: true,
                                    scrollDirection: Axis.horizontal,
                                    autoPlay: true,
                                  ),
                                  itemCount: slidesList.length,
                                  itemBuilder: (BuildContext context, int index,
                                      int realIndex) {
                                    return Container(
                                      child: Image.network(
                                          slidesList[index].image),
                                    );
                                  },
                                )),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, Routes.WALLET_ADD_FUND);
                                  },
                                  child: Icon(
                                    Icons.account_balance_wallet_outlined,
                                    size: 40,
                                    color: Constant.primaryColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 4,
                                ),
                                Icon(
                                  Icons.star,
                                  size: 36,
                                  color: Constant.primaryColor,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Constant.primaryColor,
                            width: 6,
                          ),
                          left: BorderSide(
                            color: Constant.primaryColor,
                            width: 6,
                          ),
                          top: BorderSide(
                            color: Constant.primaryColor,
                            width: 1,
                          ),
                          bottom: BorderSide(
                            color: Constant.primaryColor,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.STAR_LINE_PAGE);
                          },
                          child: Row(
                            children: [
                              Text(
                                'Starline Game',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Constant.primaryColor),
                              ),
                              Expanded(child: Container()),
                              Container(
                                  width: 40,
                                  height: 40,
                                  decoration:
                                      BoxDecoration(shape: BoxShape.circle),
                                  child: Icon(Icons.video_call_sharp))
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        border: Border(
                          right: BorderSide(
                            color: Constant.primaryColor,
                            width: 6,
                          ),
                          left: BorderSide(
                            color: Constant.primaryColor,
                            width: 6,
                          ),
                          top: BorderSide(
                            color: Constant.primaryColor,
                            width: 1,
                          ),
                          bottom: BorderSide(
                            color: Constant.primaryColor,
                            width: 1,
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.GALI_GAME_PAGE);
                          },
                          child: Row(
                            children: [
                              Text(
                                'Gali Desawar Game',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Constant.primaryColor),
                              ),
                              Expanded(child: Container()),
                              Container(
                                  width: 40,
                                  height: 40,
                                  decoration:
                                      BoxDecoration(shape: BoxShape.circle),
                                  child: Icon(Icons.video_call_sharp))
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: SingleChildScrollView(
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          child: ListView.builder(
                            itemCount: standardGameList.length,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (BuildContext context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  color: Constant.primaryColor,
                                  width: MediaQuery.of(context).size.width,
                                  height: 120,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 24,
                                            width: 24,
                                            child: InkWell(
                                                onTap: () {
                                                  Navigator.pushNamed(
                                                      context,
                                                      Routes
                                                          .CALENDER_RESULT_CHART);
                                                },
                                                child:
                                                    Icon(Icons.ac_unit_sharp)),
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          Container(
                                            height: 24,
                                            width: 24,
                                            child: InkWell(
                                                onTap: () {
                                                  Navigator.pushNamed(context,
                                                      Routes.GAME_RUNNING);
                                                },
                                                child: Icon(
                                                    Icons.video_call_sharp)),
                                          )
                                        ],
                                      ),
                                      Text(
                                        standardGameList[index].name,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: Constant.textColor),
                                      ),
                                      Text(standardGameList[index].gameId,
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Constant.textColor)),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Constant.textColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(2.0))),
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                30, 4, 30, 4),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  children: [
                                                    Text(standardGameList[index]
                                                        .startTime),
                                                    Text(standardGameList[index]
                                                        .endTime),
                                                  ],
                                                ),
                                                Column(
                                                  children: [
                                                    Text(
                                                      standardGameList[index]
                                                          .day,
                                                      style: TextStyle(
                                                          color: Constant
                                                              .primaryColor),
                                                    ),
                                                    Text(standardGameList[index]
                                                        .status),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget buildDrawer(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 96,
              decoration: BoxDecoration(color: Constant.primaryColor),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'SKS   MATKA',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 12,)
                  ],
                ),
              ),
            ),
            Container(
              height: 64,
              color: Colors.black,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Rishi Raj',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Constant.textColor),
                        ),
                        Text(
                          '8076728463',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Constant.textColor),
                        )
                      ],
                    ),
                    Expanded(child: Container()),
                    Container(
                      height: 56,
                      width: 56,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: Images.appLogoImage, fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Constant.primaryColor,
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.APP_PROFILE_PAGE);
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.contact_page,
                        color: Constant.textColor,
                      ),
                      title: Text(
                        'App Profile',
                        style: TextStyle(color: Constant.textColor),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.APP_WALLET);
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Constant.textColor,
                      ),
                      title: Text(
                        'App Wallet',
                        style: TextStyle(color: Constant.textColor),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.GAME_HISTORY);
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Constant.textColor,
                      ),
                      title: Text(
                        'Game History',
                        style: TextStyle(color: Constant.textColor),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.GAME_RATE);
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.rate_review,
                        color: Constant.textColor,
                      ),
                      title: Text(
                        'Game Rate',
                        style: TextStyle(color: Constant.textColor),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.WALLET_ADD_FUND);
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Constant.textColor,
                      ),
                      title: Text(
                        'Add Fund',
                        style: TextStyle(color: Constant.textColor),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Constant.textColor,
                    ),
                    title: Text(
                      'Withdraw Fund',
                      style: TextStyle(color: Constant.textColor),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.APP_NOTIFICATION);
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.notification_important,
                        color: Constant.textColor,
                      ),
                      title: Text(
                        'App Notification',
                        style: TextStyle(color: Constant.textColor),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.APP_NOTICEBOARD);
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.home,
                        color: Constant.textColor,
                      ),
                      title: Text(
                        'App Noticeboard',
                        style: TextStyle(color: Constant.textColor),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.HOW_PLAY);
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.ondemand_video,
                        color: Constant.textColor,
                      ),
                      title: Text(
                        'How To Play',
                        style: TextStyle(color: Constant.textColor),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Constant.textColor,
                    ),
                    title: Text(
                      'Share Now',
                      style: TextStyle(color: Constant.textColor),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Constant.textColor,
                    ),
                    title: Text(
                      'App LogOut',
                      style: TextStyle(color: Constant.textColor),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Constant.textColor,
                    ),
                    title: Text(
                      'version.1.3.3',
                      style: TextStyle(color: Constant.textColor),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

// Widget getHomePageInfoListWidget() {
//   return Padding(
//     padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
//     child: Container(
//       height: MediaQuery.of(context).size.height,
//       child: ListView.builder(
//         itemCount: standardGameList.length,
//         scrollDirection: Axis.vertical,
//         itemBuilder: (BuildContext context, index) {
//           return Container(
//             color: Constant.primaryColor,
//             width: MediaQuery.of(context).size.width,
//             height: 120,
//             child: Column(
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     InkWell(
//                         onTap: () {
//                           Navigator.pushNamed(context, Routes.CALENDER_RESULT_CHART);
//                         },
//                         child: Text(standardGameList[index].name)),
//                     SizedBox(
//                       width: 16,
//                     ),
//                     InkWell(
//                         onTap: () {
//                           Navigator.pushNamed(context, Routes.GAME_RUNNING);
//                         },
//                         child: Text(standardGameList[index].name))
//                   ],
//                 ),
//                 Text(
//                   standardGameList[index].name,
//                   style: TextStyle(
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                       color: Constant.textColor),
//                 ),
//                 Text(standardGameList[index].gameId,
//                     style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: Constant.textColor)),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     decoration: BoxDecoration(
//                         color: Constant.textColor,
//                         borderRadius: BorderRadius.all(Radius.circular(2.0))),
//                     child: Padding(
//                       padding: const EdgeInsets.fromLTRB(30, 4, 30, 4),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Column(
//                             children: [
//                               Text(standardGameList[index].startTime),
//                               Text(standardGameList[index].endTime),
//                             ],
//                           ),
//                           Column(
//                             children: [
//                               Text(
//                                 standardGameList[index].day,
//                                 style: TextStyle(color: Constant.primaryColor),
//                               ),
//                               Text(standardGameList[index].status),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//
//           );
//         },
//       ),
//     ),
//   );
// }
}
