import 'package:kabir_app/all_api_details/organisation_api_details.dart';
import 'package:kabir_app/app_wallet_details_dashboard/wallet_bid_history.dart';
import 'package:kabir_app/app_wallet_details_dashboard/wallet_transaction_history.dart';
import 'package:kabir_app/app_wallet_details_dashboard/wallet_winning_history.dart';
import 'package:kabir_app/app_wallet_details_dashboard/wallet_withdraw_funds.dart';
import 'package:kabir_app/app_wallet_details_dashboard/wallet_withdraw_history.dart';
import 'package:kabir_app/calender.dart';
import 'package:kabir_app/dashboard_games/gali_desawar_game/gali_game_bid_history.dart';
import 'package:kabir_app/dashboard_games/gali_desawar_game/gali_game_chart.dart';
import 'package:kabir_app/dashboard_games/gali_desawar_game/gali_game_result.dart';
import 'package:kabir_app/dashboard_games/starline_game/star_game_bid_history.dart';
import 'package:kabir_app/dashboard_games/starline_game/star_game_chart.dart';
import 'package:kabir_app/dashboard_games/starline_game/star_game_result.dart';
import 'package:kabir_app/app_wallet_details_dashboard/wallet_add_fund.dart';
import 'package:kabir_app/drawer_dashboard/app_noticeBoard.dart';
import 'package:kabir_app/drawer_dashboard/app_notification.dart';
import 'package:kabir_app/drawer_dashboard/app_profile.dart';
import 'package:kabir_app/drawer_dashboard/app_wallet.dart';
import 'package:kabir_app/drawer_dashboard/game_history.dart';
import 'package:kabir_app/drawer_dashboard/game_rate.dart';
import 'package:kabir_app/drawer_dashboard/how_play.dart';
import 'package:kabir_app/game_based_details/double_pana.dart';
import 'package:kabir_app/game_based_details/dp_motors.dart';
import 'package:kabir_app/game_based_details/full_sangam.dart';
import 'package:kabir_app/game_based_details/gali_game_jodi_digit.dart';
import 'package:kabir_app/game_based_details/gali_game_left_digit.dart';
import 'package:kabir_app/game_based_details/gali_game_right_digit.dart';
import 'package:kabir_app/game_based_details/half_sangam.dart';
import 'package:kabir_app/game_based_details/jodi_digit.dart';
import 'package:kabir_app/game_based_details/odd_even.dart';
import 'package:kabir_app/game_based_details/red_bracket.dart';
import 'package:kabir_app/game_based_details/single_digits.dart';
import 'package:kabir_app/game_based_details/single_pana.dart';
import 'package:kabir_app/game_based_details/sp_dp_tp.dart';
import 'package:kabir_app/game_based_details/sp_motors.dart';
import 'package:kabir_app/game_based_details/triple_pana.dart';
import 'package:kabir_app/main_page/sign_up_page.dart';
import 'package:kabir_app/page/front_page.dart';
import 'package:kabir_app/dashboard_games/gali_desawar_game/gali_game_page.dart';
import 'package:kabir_app/main_page/home_page.dart';
import 'package:kabir_app/page/login_page.dart';
import 'package:kabir_app/dashboard_games/starline_game/star_line_page.dart';
import 'package:kabir_app/payment/payment_page.dart';
import 'package:kabir_app/payment_details/account_details.dart';
import 'package:kabir_app/payment_details/googlepay_details.dart';
import 'package:kabir_app/payment_details/paytm_details.dart';
import 'package:kabir_app/payment_details/phonepe_details.dart';
import 'package:kabir_app/running_game/calender_result_chart.dart';
import 'package:kabir_app/running_game/gali_game_result_dashboard.dart';
import 'package:kabir_app/running_game/game_running.dart';
import 'package:kabir_app/running_game/star_game_dashboard.dart';

class Routes {
  static const String FRONT_PAGE = '/frontpage';
  static const String LOGIN_PAGE = '/loginPage';
  static const String HOME_PAGE = '/homepage';
  static const String GALI_GAME_PAGE = '/galiGamePage';
  static const String STAR_LINE_PAGE = '/starLinePage';
  static const String APP_PROFILE_PAGE = '/appProfilePage';
  static const String SIGNUP_PAGE = '/sigUpPage';
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
  static const String DOUBLE_PANA = '/doublePana';
  static const String DP_MOTORS = '/dpMotors';
  static const String FULL_SANGAM = '/fullSangam';
  static const String HALF_SANGAM = '/halfSangam';
  static const String JODI_DIGIT = '/jodiDigit';
  static const String ODD_EVEN = '/oddEven';
  static const String RED_BRACKET = '/redBracket';
  static const String SINGLE_DIGIT = '/singleDigit';
  static const String SINGLE_PANA = '/singlePana';
  static const String SP_DP_TP = '/spDpTp';
  static const String SP_MOTORS = '/spMotors';
  static const String TRIPLE_PANA = '/triplePana';
  static const String GALI_GAME_CHART = '/galiGameChart';
  static const String GALI_GAME_BID_HISTORY = '/galiGameBidHistory';
  static const String GALI_GAME_RESULT = '/galiGameResult';
  static const String STAR_GAME_CHART = '/starGameChart';
  static const String STAR_GAME_BID_HISTORY = '/starGameBidHistory';
  static const String STAR_GAME_RESULT = '/starGameResult';
  static const String GALI_GAME_LEFT_DIGIT = '/galiGameLeftDigit';
  static const String GALI_GAME_RIGHT_DIGIT = '/galiGameRightDigit';
  static const String GALI_GAME_JODI_DIGIT = '/galiGameJodiDigit';
  static const String GALI_GAME_RESULT_DASHBOARD = '/galiGameResultDashboard';
  static const String STAR_GAME_DASHBOARD = '/starGameDashboard';
  static const String CALENDER = '/calender';
  static const String CALENDER_RESULT_CHART = '/calenderResultChart';
  static const String API = '/organisationApiDetails';
  static const String WALLET_ADD_FUND = '/walletAddFund';
  static const String WALLET_BID_HISTORY = '/walletBidHistory';
  static const String WALLET_TRANSACTION_HISTORY = '/walletTransactionHistory';
  static const String WALLET_WINNING_HISTORY = '/walletWinningHistory';
  static const String WALLET_WITHDRAW_HISTORY = '/walletWithdrawHistory';
  static const String WALLET_WITHDRAW_FUND = '/walletWithdrawFund';

}

final routes = {
  Routes.FRONT_PAGE: (context) => FrontPage(),
  Routes.LOGIN_PAGE: (context) => LoginPage(),
  Routes.HOME_PAGE: (context) => HomePage(),
  Routes.GALI_GAME_PAGE: (context) => GaliGamePage(),
  Routes.STAR_LINE_PAGE: (context) => StarLinePage(),
  Routes.APP_PROFILE_PAGE: (context) => AppProfile(),
  Routes.SIGNUP_PAGE: (context) => SignUpPage(),
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
  Routes.DOUBLE_PANA: (context) => DoublePana(),
  Routes.DP_MOTORS: (context) => DpMotors(),
  Routes.FULL_SANGAM: (context) => FullSangam(),
  Routes.HALF_SANGAM: (context) => HalfSangam(),
  Routes.JODI_DIGIT: (context) => JodiDigit(),
  Routes.ODD_EVEN: (context) => OddEven(),
  Routes.RED_BRACKET: (context) => RedBracket(),
  Routes.SINGLE_DIGIT: (context) => SingleDigit(),
  Routes.SINGLE_PANA: (context) => SinglePana(),
  Routes.SP_DP_TP: (context) => SpDpTp(),
  Routes.SP_MOTORS: (context) => SpMotors(),
  Routes.TRIPLE_PANA: (context) => TriplaPana(),
  Routes.GALI_GAME_CHART: (context) => GaliGameChart(),
  Routes.GALI_GAME_BID_HISTORY: (context) => GaliGameBidHistory(),
  Routes.GALI_GAME_RESULT: (context) => GaliGameResult(),
  Routes.STAR_GAME_CHART: (context) => StarGameChart(),
  Routes.STAR_GAME_BID_HISTORY: (context) => StarGameBidHistory(),
  Routes.STAR_GAME_RESULT: (context) => StarGameResult(),
  Routes.GALI_GAME_LEFT_DIGIT: (context) => GaliGameLeftDigit(),
  Routes.GALI_GAME_RIGHT_DIGIT: (context) => GaliGameRightDigit(),
  Routes.GALI_GAME_JODI_DIGIT: (context) => GaliGameJodiDigit(),
  Routes.GALI_GAME_RESULT_DASHBOARD: (context) => GaliGameResultDashboard(),
  Routes.STAR_GAME_DASHBOARD: (context) => StarGameDashboard(),
  Routes.CALENDER: (context) => Calender(),
  Routes.CALENDER_RESULT_CHART: (context) => CalenderResultChart(),
  Routes.API: (context) => OrganisationApiDetails(),
  Routes.WALLET_ADD_FUND: (context) => WalletAddFund(),
  Routes.WALLET_BID_HISTORY: (context) => WalletBidHistory(),
  Routes.WALLET_TRANSACTION_HISTORY: (context) => WalletTransactionHistory(),
  Routes.WALLET_WINNING_HISTORY: (context) => WalletWinningHistory(),
  Routes.WALLET_WITHDRAW_HISTORY: (context) => WalletWithdrawHistory(),
  Routes.WALLET_WITHDRAW_FUND: (context) => WalletWithdrawFunds(),
};
