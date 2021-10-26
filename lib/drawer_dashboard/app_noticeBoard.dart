import 'package:flutter/material.dart';
import 'package:SKS_Matka/Shared/constant.dart';

class AppNoticeBoard extends StatefulWidget {
  const AppNoticeBoard({Key? key}) : super(key: key);

  @override
  _AppNoticeBoardState createState() => _AppNoticeBoardState();
}

class _AppNoticeBoardState extends State<AppNoticeBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('App Noticeboard'),
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
            child: Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Read all the Rules Carefully...... '
                      '1. You can deposit minimum 500? here  '
                      '2. You can withdraw minimum 1000? here  '
                      '3. Money withdrawal time morning 6:00 am from 11:00 am '
                      '4. 10% charge for emergency withdrawal and Sunday off  '
                      '5.  If you win the game And its payment is not added to your wallet '
                      'You message immediately after the result of the game '
                      'if you message after a day or two,nothing will happen to your balance.',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
