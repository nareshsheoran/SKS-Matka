import 'package:SKS_Matka/viewmodel/home_page_viewmodel.dart';
import 'package:SKS_Matka/widget/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:SKS_Matka/Shared/constant.dart';
import 'package:SKS_Matka/Shared/routes.dart';
import 'package:scoped_model/scoped_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomePageInfoViewModel viewModel;

  void initState() {
    viewModel = HomePageInfoViewModel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScopedModel<HomePageInfoViewModel>(
      model: viewModel,
      child: ScopedModelDescendant<HomePageInfoViewModel>(
          builder: (context, child, model) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
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
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.wallet_giftcard),
                  ))
            ],
          ),
          drawer: Drawer(
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      color: Colors.black,
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Naresh',
                                style: TextStyle(color: Constant.textColor),
                              ),
                              Text(
                                '9812677822',
                                style: TextStyle(color: Constant.textColor),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.star,
                                color: Constant.primaryColor,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('App Profile'),
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('App Wallet'),
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Game History'),
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Game Rate'),
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Add Fund'),
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Withdraw Fund'),
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('App Notification'),
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('App Noticeboard'),
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('How To Play'),
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Share Now'),
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('App LogOut'),
                    ),
                    ListTile(
                      leading: Icon(Icons.home),
                      title: Text('version.1.3.3'),
                    ),
                  ],
                ),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image:
                  DecorationImage(image: Images.bgImage, fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
                          Container(
                            height: 80,
                            color: Colors.blueAccent,
                            width: MediaQuery.of(context).size.width / 1.4,
                            child: Center(
                                child: Text(
                              'SKS MATKA',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
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
                                decoration: BoxDecoration(shape: BoxShape.circle),
                                child: Icon(Icons.video_call_sharp))
                          ],
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
                                decoration: BoxDecoration(shape: BoxShape.circle),
                                child: Icon(Icons.video_call_sharp))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    getHomePageInfoListWidget(),
                  ],
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget getHomePageInfoListWidget() {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: ListView.builder(
        itemCount: viewModel.homeInfoModelList.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, index) {
          return HomePageWidget(viewModel.homeInfoModelList[index]);
        },
      ),
    );
  }
}
