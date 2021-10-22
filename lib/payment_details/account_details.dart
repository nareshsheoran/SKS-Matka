import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';

class AccountDetails extends StatefulWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  _AccountDetailsState createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {

  TextEditingController accNameController = TextEditingController();
  TextEditingController accNoController = TextEditingController();
  TextEditingController accIfscController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Constant.appBarColor,
        title: Text(
          'Bank Details'
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              controller: accNameController,
              decoration: InputDecoration(
                hintText: 'Account Holder'
              ),
            ),
         TextField(
              controller: accNoController,
              decoration: InputDecoration(
                hintText: 'Account Number'
              ),
            ),
         TextField(
              controller: accIfscController,
              decoration: InputDecoration(
                hintText: 'Ifsc codde'
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
      ),
    );
  }
}
