import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:kabir_app/Shared/constant.dart';
import 'package:kabir_app/api_details/organization_details_api.dart';

class AddFund extends StatefulWidget {
  const AddFund({Key? key}) : super(key: key);

  @override
  _AddFundState createState() => _AddFundState();
}

class _AddFundState extends State<AddFund> {
  TextEditingController amountController = TextEditingController();
  List<Organisation> organisationModelList = [];

  Future getData() async {
    organisationModelList.clear();
    Uri myUri =
        Uri.parse('http://aikahosts.com/matka/Api/user/get_orgnisation_detail');
    Response response = await get(myUri);
    if (response.statusCode == 200) {
      final list = jsonDecode(response.body) as List;

      list.forEach((element) {
        organisationModelList.add(Organisation.fromJson(element));
      });

      setState(() {});
    }
  }

  @override
  void initState() {
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Fund'),
      ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: 250,
            child: Text('0.0'),
          ),
          TextFormField(
            controller: amountController,
            decoration: InputDecoration(hintText: 'Enter Amount to add'),
          ),
          Container(
            decoration: BoxDecoration(color: Constant.primaryColor),
            child: Row(
              children: [
                Icon(Icons.email),
                Column(
                  children: [
                    Text('Pay By GPay'),
                    Text('Auto Credit'),
                  ],
                ),
                Container(
                  child: Text('GPay'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


