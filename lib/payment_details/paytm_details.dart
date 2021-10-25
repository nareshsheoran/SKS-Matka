import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';

class PaytmDetails extends StatefulWidget {
  const PaytmDetails({Key? key}) : super(key: key);

  @override
  _PaytmDetailsState createState() => _PaytmDetailsState();
}

class _PaytmDetailsState extends State<PaytmDetails> {
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('Paytm Details'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 8),
            child: Container(
              decoration: BoxDecoration(color: Colors.grey[400]),
              child: TextFormField(
                controller: numberController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 16),
                    hintText: 'Paytm Number',
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
    );
  }
}
