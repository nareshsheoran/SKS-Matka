import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';

class HowPlay extends StatefulWidget {
  const HowPlay({Key? key}) : super(key: key);

  @override
  _HowPlayState createState() => _HowPlayState();
}

class _HowPlayState extends State<HowPlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Constant.appBarColor, title: Text('How To Play')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Download our application from Google Play Store.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Register with your Mobile Number,Email ID,User Name with our platform.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Login with the application using Mobile Number and Password.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Select the Game type,select your favourite number and start to Play Game.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Get a chance to win upto 20 Lac Points.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
