import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';

class WalletWithdrawFunds extends StatefulWidget {
  const WalletWithdrawFunds({Key? key}) : super(key: key);

  @override
  _WalletWithdrawFundsState createState() => _WalletWithdrawFundsState();
}

class _WalletWithdrawFundsState extends State<WalletWithdrawFunds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('Withdraw Funds'),
      ),
    );
  }
}
