import 'dart:convert';
import 'package:SKS_Matka/Shared/constant.dart';
import 'package:SKS_Matka/api_details/slide_details_api.dart';
import 'package:http/http.dart';

class SliderService {
  static late SliderService _instance;

  SliderService._internal();

  static SliderService getInstance() {
    if (_instance == null) {
      _instance = SliderService._internal();
    }
    return _instance;
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