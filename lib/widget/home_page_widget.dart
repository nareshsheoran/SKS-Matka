import 'package:flutter/material.dart';
import 'package:kabir_app/Shared/constant.dart';
import 'package:kabir_app/model/home_info_model.dart';

class HomePageWidget extends StatelessWidget {
  final HomeInfoModel homeInfoModel;

  const HomePageWidget(this.homeInfoModel);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
      child: Container(
        color: Constant.primaryColor,
        width: MediaQuery.of(context).size.width,
        height: 120,
        child: Column(
          children: [
            Row(
              children: [Icon(homeInfoModel.icon1), Icon(homeInfoModel.icon2)],
            ),
            Text(
              homeInfoModel.name,
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Constant.textColor),
            ),
            Text(homeInfoModel.code,
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Constant.textColor)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(color: Constant.textColor,
                    borderRadius: BorderRadius.all(
                        Radius.circular(2.0)
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(30, 4, 30, 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(homeInfoModel.time1),
                          Text(homeInfoModel.time2),
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            homeInfoModel.status,
                            style: TextStyle(color: Constant.primaryColor),
                          ),
                          Text(homeInfoModel.time),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
