import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';

class GooglePayDetails extends StatefulWidget {
  const GooglePayDetails({Key? key}) : super(key: key);

  @override
  _GooglePayDetailsState createState() => _GooglePayDetailsState();
}

class _GooglePayDetailsState extends State<GooglePayDetails> {
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(backgroundColor: Constant.appBarColor,
      title: Text('Google Pay Details'),
    ),
    body: Column(
      children: [
        TextField(
          controller: numberController,
          decoration: InputDecoration(
            hintText: 'Google Pay Number'
          ),
        ),Padding(
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
    );
  }
}