import 'dart:convert';

import 'package:http/http.dart';
import 'package:kabir_app/Shared/constant.dart';
import 'package:kabir_app/api_details/slide_details_api.dart';
import 'package:kabir_app/api_details/standard_game_api.dart';

class GameService {
  static late GameService _instance;

  GameService._internal() {}

  String email = "";

  static GameService getInstance() {
    if (_instance == null) {
      _instance = GameService._internal();
    }
    return _instance;
  }

  Future<List<StandardGame>?> fetchStandardGameName() async {
    Uri myUri =
        Uri.parse(NetworkUtil.getStandardGameNameUrl);
    Response response = await get(myUri);
    List<StandardGame>? standardGameList = [];
    if (response.statusCode == 200) {
      Map<String, dynamic> map =
          jsonDecode(response.body) as Map<String, dynamic>;
      StandardGameApi standardGameApi = StandardGameApi.fromJson(map);
      standardGameList = standardGameApi.standardGame;
    }
    return standardGameList;
  }

  Future<List<Slides>> fetchSliderData() async {
    Uri myUri = Uri.parse(NetworkUtil.getSliderUrl);
    Response response = await get(myUri);
    List<Slides> slidesList = [];
    if (response.statusCode == 200) {
      Map<String, dynamic> map =
          jsonDecode(response.body) as Map<String, dynamic>;
      SlideApiDetails slidesApiDetails = SlideApiDetails.fromJson(map);
      slidesList = slidesApiDetails.slides;
    }
    return slidesList;
  }
}
