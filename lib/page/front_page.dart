import 'dart:async';
import 'package:SKS_Matka/Shared/constant.dart';
import 'package:SKS_Matka/Shared/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 4), () {
      Navigator.pushNamed(context, Routes.LOGIN_PAGE);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Images.logoImage,
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.rectangle),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Text(
                      'Wait Loading....',
                      style: TextStyle(color: Constant.textColor),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
