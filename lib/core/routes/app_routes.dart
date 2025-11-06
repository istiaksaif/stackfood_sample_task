abstract class Routes {
  static const splash = '/splash';
  static const home = '/home';
  static const matchDetails = '/matchDetails/:id';

  static String matchDetailsWithId(String id) => '/matchDetails/$id';

  static const premium = '/premium';
  static const todayMatch = '/todayMatch';
  static const recentResults = '/recentResults';
  static const allLeague = '/allLeague';
  static const leagueDetails = '/leagueDetails/:id';
  static const teamDetails = '/teamDetails/:id';
  static const playerDetails = '/playerDetails/:id';
  static const sendResetOtpRoute = '/sendResetOtp';
  static const otpVerifyRoute = '/otpVerify';
  static const resetPasswordRoute = '/resetPassword';
  static const authentication = '/authentication';
  static const watchLive = '/watchLive/:id';
  static const morePage = '/morePage';
  static const userProfileRoute = '/userProfileScreen';
  static const webViewRoute = '/webView';

  static String leagueDetailsWithId(String id) => '/leagueDetails/$id';

  static String watchLiveWithId(String id) => '/watchLive/$id';

  static String teamDetailsWithId(String id) => '/teamDetails/$id';

  static String playerDetailsWithId(String id) => '/playerDetails/$id';
}
