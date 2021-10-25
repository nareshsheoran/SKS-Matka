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
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('Bank Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 8),
              child: Container(
                decoration: BoxDecoration(color: Colors.grey[400]),
                child: TextField(
                  controller: accNameController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      hintText: 'Account Holder',
                      hintStyle: TextStyle(fontSize: 20)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 8),
              child: Container(
                decoration: BoxDecoration(color: Colors.grey[400]),
                child: TextField(
                  controller: accNoController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      hintText: 'Account Number',
                      hintStyle: TextStyle(fontSize: 20)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 8),
              child: Container(
                decoration: BoxDecoration(color: Colors.grey[400]),
                child: TextField(
                  controller: accIfscController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      hintText: 'Ifsc Code',
                      hintStyle: TextStyle(fontSize: 20)),
                ),
              ),
            ),
            SizedBox(height: 16),
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
