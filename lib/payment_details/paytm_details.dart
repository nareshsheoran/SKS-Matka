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
      appBar: AppBar(backgroundColor: Constant.primaryColor,
        title: Text('Paytm Details'),
      ),
      body: Column(
        children: [
          TextField(
            controller: numberController,
            decoration: InputDecoration(
              hintText: 'Paytm Number'
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
