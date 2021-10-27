import 'package:flutter/material.dart';
import 'package:SKS_Matka/Shared/constant.dart';

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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(image: Images.bgImage, fit: BoxFit.cover)),
        child: SingleChildScrollView(),
      ),
    );
  }
}
