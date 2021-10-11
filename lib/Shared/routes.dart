
import 'package:kabir_official/front_page.dart';
import 'package:kabir_official/home_page.dart';

class Routes {
  static const String FRONT_PAGE = '/frontpage';
  static const String HOME_PAGE = '/homepage';
}

final routes = {
  Routes.FRONT_PAGE: (context) => FrontPage(),
  Routes.HOME_PAGE: (context) => HomePage(),
};
