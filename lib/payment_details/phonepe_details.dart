import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';

class PhonePeDetails extends StatefulWidget {
  const PhonePeDetails({Key? key}) : super(key: key);

  @override
  _PhonePeDetailsState createState() => _PhonePeDetailsState();
}

class _PhonePeDetailsState extends State<PhonePeDetails> {
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Constant.appBarColor,
        title: Text('PhonePe Details'),
      ),
      body: Column(
        children: [
          TextField(
            controller: numberController,
            decoration: InputDecoration(hintText: 'Phone Pe Number'),
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
    );
  }
}
