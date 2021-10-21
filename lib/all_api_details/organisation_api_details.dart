import 'dart:convert';
import 'package:http/http.dart';
import 'package:flutter/material.dart';
import 'package:kabir_app/api_details/organization_details_api.dart';


@override
class OrganisationApiDetails extends StatefulWidget {
  const OrganisationApiDetails({Key? key}) : super(key: key);
  _OrganisationApiDetailsState createState() => _OrganisationApiDetailsState();
}

class _OrganisationApiDetailsState extends State<OrganisationApiDetails> {
  ScrollController scrollController = ScrollController();
  List<Organisation> organisationModelList = [];


  Future getData() async {
    organisationModelList.clear();
    Uri myUri =
    Uri.parse('http://aikahosts.com/matka/Api/user/get_orgnisation_detail');
    Response response = await get(myUri);
    if (response.statusCode == 200) {
      Map<String,dynamic> map = jsonDecode(response.body) as Map<String,dynamic>;

      OrganizationDetails organizationDetails = OrganizationDetails.fromJson(map);
      Organisation organisation = organizationDetails.organisation;

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
        title: Text('API'),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        controller: scrollController,
        itemCount: organisationModelList.length,
        itemBuilder: (context, index) {
          return InkWell(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
              ),
              child: Container(
                decoration: BoxDecoration(color: Colors.red),
                child: organisationList(
                    context,
                    organisationModelList[index].id,
                    organisationModelList[index].name,
                    organisationModelList[index].email,
                    organisationModelList[index].phone,
                    organisationModelList[index].wpNumber,
                    organisationModelList[index].address,
                    organisationModelList[index].phonePay,
                    organisationModelList[index].gPay,
                    organisationModelList[index].paytm,
                    organisationModelList[index].upi,
                    organisationModelList[index].updatedAt),
              ),
            ),
          );
        },
      ),
    );
  }
}

Widget organisationList(
    BuildContext context,
    String id,
    String name,
    String email,
    String phone,
    String wpNumber,
    String address,
    String phonePay,
    String gPay,
    String paytm,
    String upi,
    String updatedAt) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Text(
                id,
                style: TextStyle(fontSize: 8, color: Colors.black),
              ),
              Text(
                name,
                style: TextStyle(fontSize: 8, color: Colors.black),
              ),
              Text(
                email,
                style: TextStyle(fontSize: 8, color: Colors.black),
              ),
              Text(
                phone,
                style: TextStyle(fontSize: 8, color: Colors.black),
              ),
              Text(
                wpNumber,
                style: TextStyle(fontSize: 8, color: Colors.black),
              ),
              Text(
                address,
                style: TextStyle(fontSize: 8, color: Colors.black),
              ),
              Text(
                phonePay,
                style: TextStyle(fontSize: 8, color: Colors.black),
              ),
              Text(
                gPay,
                style: TextStyle(fontSize: 8, color: Colors.black),
              ),
              Text(
                paytm,
                style: TextStyle(fontSize: 8, color: Colors.black),
              ),
              Text(
                upi,
                style: TextStyle(fontSize: 8, color: Colors.black),
              ),
              Text(
                updatedAt,
                style: TextStyle(fontSize: 8, color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
