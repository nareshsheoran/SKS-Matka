import 'dart:convert';

import 'package:SKS_Matka/Shared/constant.dart';
import 'package:SKS_Matka/api_details/predefined_num_api.dart';
import 'package:http/http.dart';

class PreDefinedService {
  static late PreDefinedService _instance;

  PreDefinedService._internal();

  static PreDefinedService getInstance() {
    if (_instance == null) {
      _instance = PreDefinedService._internal();
    }
    return _instance;
  }

  Future<List<Numbers>> fetchPredefinedNumberData() async {
    Uri myUri = Uri.parse(NetworkUtil.getPredefinedNumberUrl);
    Response response = await get(myUri);
    List<Numbers> numbersList = [];
    if (response.statusCode == 200) {
      Map<String, dynamic> map =
          jsonDecode(response.body) as Map<String, dynamic>;
      PredefinedNumberApi predefinedNumberApi =
          PredefinedNumberApi.fromJson(map);
      numbersList = predefinedNumberApi.numbers!;
    }
    return numbersList;
  }
}
