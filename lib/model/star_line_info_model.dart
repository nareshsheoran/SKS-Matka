import 'package:flutter/material.dart';

class StarLineInfoModel {
  final String time1;
  final String code;
  final String status;
  final String time2;
  final IconData icon;

  StarLineInfoModel(
      {required this.time1,
      required this.code,
      required this.status,
      required this.time2,
      required this.icon});
}
