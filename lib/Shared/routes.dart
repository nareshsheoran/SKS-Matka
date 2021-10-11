
import 'package:kabir_app/page/front_page.dart';
import 'package:kabir_app/page/home_page.dart';
import 'package:kabir_app/page/login_page.dart';

class Routes {
  static const String FRONT_PAGE = '/frontpage';
  static const String LOGIN_PAGE = '/loginpage';
  static const String HOME_PAGE = '/homepage';
}

final routes = {
  Routes.FRONT_PAGE: (context) => FrontPage(),
  Routes.LOGIN_PAGE: (context) => LoginPage(),
  Routes.HOME_PAGE: (context) => HomePage(),
};
