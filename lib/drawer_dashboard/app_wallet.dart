import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';
import 'package:kabir_app/Shared/routes.dart';

class AppWallet extends StatefulWidget {
  const AppWallet({Key? key}) : super(key: key);

  @override
  _AppWalletState createState() => _AppWalletState();
}

class _AppWalletState extends State<AppWallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Wallet'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(onTap: (){
                  Navigator.pushNamed(context, Routes.ADD_FUND);
                },
                    child: buildContainer('Add Funds',)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: buildContainer('Withdraw Funds'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: buildContainer('Bid History'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: buildContainer('Winning history'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: buildContainer('Transaction History'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: buildContainer('Withdraw History'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainer(String text) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
          color: Constant.primaryColor, borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(children: [
          Text(
            text,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Constant.textColor),
          ),
          Expanded(child: Container()),
          Icon(Icons.account_balance_wallet_outlined)
        ]),
      ),
    );
  }
}
