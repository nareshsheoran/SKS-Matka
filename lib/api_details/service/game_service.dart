import 'dart:convert';
import 'package:SKS_Matka/Shared/constant.dart';
import 'package:SKS_Matka/api_details/standard_game_api.dart';
import 'package:http/http.dart';

class GameService {
  static late GameService _instance;

  GameService._internal();

  static GameService getInstance() {
    if (_instance == null) {
      _instance = GameService._internal();
    }
    return _instance;
  }

  Future<List<StandardGame>?> fetchStandardGameName() async {
    Uri myUri = Uri.parse(NetworkUtil.getStandardGameNameUrl);
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

}
