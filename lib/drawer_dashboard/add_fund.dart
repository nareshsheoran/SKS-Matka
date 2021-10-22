import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';
import 'package:kabir_app/Shared/routes.dart';

class AddFund extends StatefulWidget {
  const AddFund({Key? key}) : super(key: key);

  @override
  _AddFundState createState() => _AddFundState();
}

class _AddFundState extends State<AddFund> {
  TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Constant.appBarColor,
        title: Text('Add Fund'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 24, 8, 8),
              child: Container(
                height: 50,
                child: Center(
                    child: Text(
                  '0.0',
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: amountController,keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Amount to add',
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.grey,
                          width: MediaQuery.of(context).size.width / 3)),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  errorStyle: TextStyle(color: Colors.white),
                  hintStyle: TextStyle(fontSize: 16, color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.PAYMENT_PAGE);
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Constant.primaryColor,
                      borderRadius: BorderRadius.circular(4)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.email,
                          color: Constant.textColor,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pay By GPay',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Constant.textColor),
                            ),
                            Text('Auto Credit',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey)),
                          ],
                        ),
                        Expanded(child: Container()),
                        Container(
                          child: Icon(
                            Icons.email,
                            color: Constant.textColor,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Constant.primaryColor,
                    borderRadius: BorderRadius.circular(4)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Constant.textColor,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pay By PhonePe',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Constant.textColor),
                          ),
                          Text('Auto Credit',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey)),
                        ],
                      ),
                      Expanded(child: Container()),
                      Container(
                        child: Icon(
                          Icons.email,
                          color: Constant.textColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Constant.primaryColor,
                    borderRadius: BorderRadius.circular(4)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Constant.textColor,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pay By Other',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Constant.textColor),
                          ),
                          Text('Auto Credit',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey)),
                        ],
                      ),
                      Expanded(child: Container()),
                      Container(
                        child: Icon(
                          Icons.email,
                          color: Constant.textColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Constant.primaryColor,
                    borderRadius: BorderRadius.circular(4)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.email,
                        color: Constant.textColor,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Pay By Paytm',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Constant.textColor),
                          ),
                          Text('Admin Approval',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey)),
                        ],
                      ),
                      Expanded(child: Container()),
                      Container(
                        child: Icon(
                          Icons.email,
                          color: Constant.textColor,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                child: Center(
                    child: Text(
                  'ADD FUND',
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
