import 'package:get_storage/get_storage.dart';

const kIsLOGIN = "is_login";
const kUserInfo = 'user_info';
const kToken = 'user_token';
const kIsFirstTime = 'firstTime';
const kIsRated = 'app_rated';
const kReviewSession = 'review_session';
const kReviewCancel = 'review_cancel';
const kFirstTime = 'first_time';
const kUserType = 'userType';
const kUserId = 'userId';
const kLanguageCode = 'language_code';
const kUserEmail = 'user_email';
const kUserPassword = 'user_password';
const kPremiumUntil = 'premium_until';
const kOneSignalAppId = 'one_signal_app_id';
const kCurrencySymbol = 'currency_symbol';
const kCurrencyDirection = 'currency_direction';

class SessionManager {
  static GetStorage _preferences = GetStorage();

  static Future<void> init() async {
    await GetStorage.init();
    _preferences = GetStorage();
  }

  static void setValue(String key, dynamic value) {
    _preferences.write(key, value);
  }

  static dynamic getValue(String key, {dynamic value}) {
    return _preferences.read(key) ?? value;
  }

  static dynamic removeValue(String key) {
    return _preferences.remove(key);
  }

  static dynamic logout() async {
    String email = getValue(kUserEmail, value: '');
    String password = getValue(kUserPassword, value: '');
    _preferences.erase();
    setValue(kFirstTime, false);
    setValue(kUserEmail, email);
    setValue(kUserPassword, password);
  }
}
