import 'package:flutter/material.dart';
import 'package:SKS_Matka/Shared/constant.dart';
import 'package:SKS_Matka/Shared/routes.dart';

class PhonePeDetails extends StatefulWidget {
  const PhonePeDetails({Key? key}) : super(key: key);

  @override
  _PhonePeDetailsState createState() => _PhonePeDetailsState();
}

class _PhonePeDetailsState extends State<PhonePeDetails> {
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constant.appBarColor,
        title: Text('PhonePe Details'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image:
            DecorationImage(image: Images.bgImage, fit: BoxFit.cover)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24,horizontal: 8),
              child: Container(
                decoration: BoxDecoration(color: Colors.grey[400]),
                child: TextField(
                  controller: numberController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 16),
                      hintText: 'Phone Pe Number',
                      hintStyle: TextStyle(fontSize: 20)),
                ),
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
