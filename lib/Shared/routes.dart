
import 'package:kabir_app/drawer_dashboard/add_fund.dart';
import 'package:kabir_app/drawer_dashboard/app_noticeBoard.dart';
import 'package:kabir_app/drawer_dashboard/app_notification.dart';
import 'package:kabir_app/drawer_dashboard/app_profile.dart';
import 'package:kabir_app/drawer_dashboard/app_wallet.dart';
import 'package:kabir_app/drawer_dashboard/game_history.dart';
import 'package:kabir_app/drawer_dashboard/game_rate.dart';
import 'package:kabir_app/drawer_dashboard/how_play.dart';
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
import 'package:kabir_app/running_game/game_running.dart';

class Routes {
  static const String FRONT_PAGE = '/frontpage';
  static const String LOGIN_PAGE = '/loginPage';
  static const String HOME_PAGE = '/homepage';
  static const String GALI_GAME_PAGE = '/galiGamePage';
  static const String STAR_LINE_PAGE = '/starLinePage';
  static const String APP_PROFILE_PAGE = '/appProfilePage';
  static const String SIGNUP_PAGE = '/sigUpPage';
  static const String ADD_FUND = '/addFund';
  static const String APP_WALLET = '/appWallet';
  static const String GAME_RATE = '/gameRate';
  static const String PAYMENT_PAGE = '/paymentPage';
  static const String ACCOUNT_DETAILS = '/accountDetails';
  static const String PAYTM_DETAILS = '/paytmDetails';
  static const String GOOGLEPAY_DETAILS = '/googlePayDetails';
  static const String PHONEPE_DETAILS = '/phonePeDetails';
  static const String GAME_RUNNING = '/gameRunning';
  static const String HOW_PLAY = '/howPlay';
  static const String APP_NOTICEBOARD = '/appNoticeboard';
  static const String APP_NOTIFICATION = '/appNotification';
  static const String GAME_HISTORY = '/gameHistory';
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
  Routes.GAME_RUNNING: (context) => GameRunning(),
  Routes.HOW_PLAY: (context) => HowPlay(),
  Routes.APP_NOTICEBOARD: (context) => AppNoticeBoard(),
  Routes.APP_NOTIFICATION: (context) => AppNotification(),
  Routes.GAME_HISTORY: (context) => GameHistory(),
};
