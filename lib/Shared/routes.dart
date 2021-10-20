
import 'package:kabir_app/drawer_dashboard/add_fund.dart';
import 'package:kabir_app/drawer_dashboard/app_profile.dart';
import 'package:kabir_app/drawer_dashboard/app_wallet.dart';
import 'package:kabir_app/drawer_dashboard/game_rate.dart';
import 'package:kabir_app/main_page/sign_up_page.dart';
import 'package:kabir_app/page/front_page.dart';
import 'package:kabir_app/page/gali_game_page.dart';
import 'package:kabir_app/main_page/home_page.dart';
import 'package:kabir_app/page/login_page.dart';
import 'package:kabir_app/page/star_line_page.dart';
import 'package:kabir_app/payment/payment_page.dart';
import 'package:kabir_app/payment_details/account_details.dart';
import 'package:kabir_app/payment_details/googlepay_details.dart';
import 'package:kabir_app/payment_details/paytm_details.dart';
import 'package:kabir_app/payment_details/phonepe_details.dart';

class Routes {
  static const String FRONT_PAGE = '/frontpage';
  static const String LOGIN_PAGE = '/loginpage';
  static const String HOME_PAGE = '/homepage';
  static const String GALI_GAME_PAGE = '/galigamepage';
  static const String STAR_LINE_PAGE = '/starlinepage';
  static const String APP_PROFILE_PAGE = '/appprofilepage';
  static const String SIGNUP_PAGE = '/signuppage';
  static const String ADD_FUND = '/addfund';
  static const String APP_WALLET = '/appwallet';
  static const String GAME_RATE = '/gamerate';
  static const String PAYMENT_PAGE = '/paymentpage';
  static const String ACCOUNT_DETAILS = '/accountdetails';
  static const String PAYTM_DETAILS = '/paytmdetails';
  static const String GOOGLEPAY_DETAILS = '/googlepaydetails';
  static const String PHONEPE_DETAILS = '/phonepedetails';
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
  Routes.APP_WALLET: (context) => AppWallet(),
  Routes.GAME_RATE: (context) => GameRate(),
  Routes.PAYMENT_PAGE: (context) => PaymentPage(),
  Routes.ACCOUNT_DETAILS: (context) => AccountDetails(),
  Routes.PAYTM_DETAILS: (context) => PaytmDetails(),
  Routes.GOOGLEPAY_DETAILS: (context) => GooglePayDetails(),
  Routes.PHONEPE_DETAILS: (context) => PhonePeDetails(),
};
