import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kabir_app/Shared/routes.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  _FrontPageState createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushNamed(context, Routes.LOGIN_PAGE);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/logo.jpg'),
              fit: BoxFit.cover,
            ),shape: BoxShape.rectangle
        ),
      ),
    );
  }
}
