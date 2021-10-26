import 'package:SKS_Matka/model/home_info_model.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class HomePageInfoViewModel extends Model {
  List<HomeInfoModel> homeInfoModelList = [];

  HomePageInfoViewModel() {
    loadHomeInfoList();
  }

  void loadHomeInfoList() {
    homeInfoModelList = [
      HomeInfoModel(
          name: 'RUDRAKASH MORNING',
          code: '380-19-270',
          time1: "10:00 AM",
          time2: '11:00 AM',
          status: 'CLOSED',
          time: '00:00:00',
          icon1: Icons.ac_unit,
          icon2: Icons.message),
      HomeInfoModel(
          name: 'SHRIDEVI DAY',
          code: '235-09-577',
          time1: "11:30 AM",
          time2: '12:030 AM',
          status: 'CLOSED',
          time: '00:00:00',
          icon1: Icons.ac_unit,
          icon2: Icons.message),
      HomeInfoModel(
          name: 'RUDRAKASH MORNING',
          code: '380-19-270',
          time1: "10:00 AM",
          time2: '11:00 AM',
          status: 'CLOSED',
          time: '00:00:00',
          icon1: Icons.ac_unit,
          icon2: Icons.message),
      HomeInfoModel(
          name: 'SHRIDEVI DAY',
          code: '235-09-577',
          time1: "11:30 AM",
          time2: '12:030 AM',
          status: 'CLOSED',
          time: '00:00:00',
          icon1: Icons.ac_unit,
          icon2: Icons.message),

      HomeInfoModel(

          name: 'RUDRAKASH MORNING',
          code: '380-19-270',
          time1: "10:00 AM",
          time2: '11:00 AM',
          status: 'CLOSED',
          time: '00:00:00',
          icon1: Icons.ac_unit,
          icon2: Icons.message),
      HomeInfoModel(
          name: 'SHRIDEVI DAY',
          code: '235-09-577',
          time1: "11:30 AM",
          time2: '12:030 AM',
          status: 'CLOSED',
          time: '00:00:00',
          icon1: Icons.ac_unit,
          icon2: Icons.message),
      HomeInfoModel(
          name: 'SHRIDEVI DAY',
          code: '235-09-577',
          time1: "11:30 AM",
          time2: '12:030 AM',
          status: 'CLOSED',
          time: '00:00:00',
          icon1: Icons.ac_unit,
          icon2: Icons.message),
      HomeInfoModel(
          name: 'SHRIDEVI DAY',
          code: '235-09-577',
          time1: "11:30 AM",
          time2: '12:030 AM',
          status: 'CLOSED',
          time: '00:00:00',
          icon1: Icons.ac_unit,
          icon2: Icons.message),
    ];
    notifyListeners();
  }
}