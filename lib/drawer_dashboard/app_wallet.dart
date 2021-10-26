import 'package:SKS_Matka/Shared/routes.dart';
import 'package:flutter/material.dart';
import 'package:SKS_Matka/Shared/constant.dart';

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
        backgroundColor: Constant.appBarColor,
        title: Text('App Wallet'),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              image: DecorationImage(image: Images.bgImage, fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, Routes.WALLET_ADD_FUND);
                      },
                      child: buildContainer(
                        'Add Funds',
                      )),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.WALLET_WITHDRAW_FUND);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildContainer('Withdraw Funds'),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.WALLET_BID_HISTORY);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildContainer('Bid History'),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.WALLET_WINNING_HISTORY);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildContainer('Winning history'),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context, Routes.WALLET_TRANSACTION_HISTORY);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildContainer('Transaction History'),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(
                        context, Routes.WALLET_WITHDRAW_HISTORY);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: buildContainer('Withdraw History'),
                  ),
                ),
              ],
            ),
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
