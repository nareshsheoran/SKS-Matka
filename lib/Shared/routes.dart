
import 'package:kabir_app/drawer_dashboard/add_fund.dart';
import 'package:kabir_app/drawer_dashboard/app_profile.dart';
import 'package:kabir_app/main_page/sign_up_page.dart';
import 'package:kabir_app/page/front_page.dart';
import 'package:kabir_app/page/gali_game_page.dart';
import 'package:kabir_app/main_page/home_page.dart';
import 'package:kabir_app/page/login_page.dart';
import 'package:kabir_app/page/star_line_page.dart';

class Routes {
  static const String FRONT_PAGE = '/frontpage';
  static const String LOGIN_PAGE = '/loginpage';
  static const String HOME_PAGE = '/homepage';
  static const String GALI_GAME_PAGE = '/galigamepage';
  static const String STAR_LINE_PAGE = '/starlinepage';
  static const String APP_PROFILE_PAGE = '/appprofilepage';
  static const String SIGNUP_PAGE = '/signuppage';
  static const String ADD_FUND = '/addfund';
}

final routes = {
  Routes.FRONT_PAGE: (context) => FrontPage(),
  Routes.LOGIN_PAGE: (context) => LoginPage(),
  Routes.HOME_PAGE: (context) => HomePage(),
  Routes.GALI_GAME_PAGE: (context) => GaliGamePage(),
  Routes.STAR_LINE_PAGE: (context) => StarLinePage(),
  Routes.APP_PROFILE_PAGE: (context) => AppProfile(),
  Routes.SIGNUP_PAGE: (context) => SignUpPage(),
  Routes.ADD_FUND: (context) => AddFund(),
};
