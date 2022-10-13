
import 'package:auth_web_1c/pages/settings_connection_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';


class SettingsConnectionToWebService {

  String ?_urlWebService;
  String ?_user1CWebServices;
  String ?_passwordUserWebService;
  final Future<SharedPreferences> _sharedPreferences = SharedPreferences.getInstance();

  writeSettings() async {

    final SharedPreferences sharedPreferences = await _sharedPreferences;

    sharedPreferences.setString("urlWebService", _urlWebService!);
    sharedPreferences.setString("user1CWebServices", _user1CWebServices!);
    sharedPreferences.setString("passwordUserWebService", _passwordUserWebService!);

  }

  readSettings() async {

    final SharedPreferences sharedPreferences = await _sharedPreferences;

    _urlWebService = sharedPreferences.getString("urlWebService") ?? '';
    _user1CWebServices = sharedPreferences.getString("user1CWebServices") ?? '';
    _passwordUserWebService = sharedPreferences.getString("passwordUserWebService") ?? '';

  }

  testConnection(){

  }
}



