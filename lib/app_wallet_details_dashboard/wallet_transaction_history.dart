import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';

class WalletTransactionHistory extends StatefulWidget {
  const WalletTransactionHistory({Key? key}) : super(key: key);

  @override
  _WalletTransactionHistoryState createState() =>
      _WalletTransactionHistoryState();
}

class _WalletTransactionHistoryState extends State<WalletTransactionHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('Transaction History'),
      ),      body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 24, 8, 8),
          child: Container(
            height: 50,
            child: Center(
                child: Text(
                  'BALANCE: 0.0',
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
