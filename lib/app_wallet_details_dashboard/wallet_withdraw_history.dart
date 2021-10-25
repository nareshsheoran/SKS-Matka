import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';

class WalletWithdrawHistory extends StatefulWidget {
  const WalletWithdrawHistory({Key? key}) : super(key: key);

  @override
  _WalletWithdrawHistoryState createState() => _WalletWithdrawHistoryState();
}

class _WalletWithdrawHistoryState extends State<WalletWithdrawHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('Withdraw History'),
      ),
      body: Column(
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
