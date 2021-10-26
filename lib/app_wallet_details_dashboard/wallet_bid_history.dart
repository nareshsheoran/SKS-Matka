import 'package:flutter/material.dart';
import 'package:SKS_Matka/Shared/constant.dart';
import 'package:SKS_Matka/Shared/routes.dart';
class WalletBidHistory extends StatefulWidget {
  const WalletBidHistory({Key? key}) : super(key: key);

  @override
  _WalletBidHistoryState createState() => _WalletBidHistoryState();
}

class _WalletBidHistoryState extends State<WalletBidHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('Bid History'),
      ),      body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          image:
          DecorationImage(image: Images.bgImage, fit: BoxFit.cover)),
        child: Column(
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
      ),

    );
  }
}
