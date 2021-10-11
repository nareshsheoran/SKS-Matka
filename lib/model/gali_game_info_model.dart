import 'package:flutter/material.dart';

class GaliGameInfoModel {
  final String name;
  final String number;
  final String time;
  final String status;
  final String code;
  final IconData icon;

  GaliGameInfoModel(
      {required this.name,
      required this.number,
      required this.time,
      required this.status,
      required this.code,
      required this.icon});
}
