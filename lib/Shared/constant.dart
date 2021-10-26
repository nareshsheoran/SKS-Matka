import 'package:flutter/material.dart';

class Constant {
  static final Color primaryColor = Colors.pink;
  static final Color iconColor = Colors.yellowAccent;
  static final Color textColor = Colors.white;
  static final Color appBarColor = Colors.pink;
  static final IconData icon = Icons.video_call_sharp;
}


 class Images{
  static final AssetImage bgImage = AssetImage('assets/image/bg.jpg');
  static final AssetImage logoImage = AssetImage('assets/image/logo.jpg');
 }


class NetworkUtil {
  static const String BaseUrl = "http://aikahosts.com";
  static const String getSliderUrl = BaseUrl+"/matka/Api/user/get_sliders";
  static const String getStandardGameNameUrl = BaseUrl+"/matka/Api/user/get_standard_gamename";
  static const String getPredefinedNumberUrl = BaseUrl+"/matka/Api/user/get_predefined_number";
  static const String getOrganisationUrl = BaseUrl+"/matka/Api/user/get_orgnisation_detail";
}
