import 'package:flutter/material.dart';

import 'package:SKS_Matka/Shared/constant.dart';
import 'package:SKS_Matka/Shared/routes.dart';

class GooglePayDetails extends StatefulWidget {
  const GooglePayDetails({Key? key}) : super(key: key);

  @override
  _GooglePayDetailsState createState() => _GooglePayDetailsState();
}

class _GooglePayDetailsState extends State<GooglePayDetails> {
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('Google Pay Details'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image:
            DecorationImage(image: Images.bgImage, fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 8),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[400]),
                  child: TextFormField(
                    controller: numberController,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        hintText: 'Google Pay Number',
                        hintStyle: TextStyle(fontSize: 20)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  child: Center(
                      child: Text(
                    'ADD PAYMENT METHOD',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Constant.textColor),
                  )),
                  decoration: BoxDecoration(
                      color: Constant.primaryColor,
                      borderRadius: BorderRadius.circular(4)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
