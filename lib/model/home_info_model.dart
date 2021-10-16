import 'package:flutter/cupertino.dart';

class HomeInfoModel {
  final String name;
  final String code;
  final String time1;
  final String time2;
  final String status;
  final String time;
  final IconData icon1;
  final IconData icon2;

  HomeInfoModel(
      { required this.name,
       required this.code,
       required this.time1,
       required this.time2,
       required this.status,
       required this.time,
       required this.icon1,
       required this.icon2});
}
