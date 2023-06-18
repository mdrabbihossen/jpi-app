import 'package:shared_preferences/shared_preferences.dart';

class BloodPrefences {
  static SharedPreferences? _prefs;
  static const String _fullName = 'fullName';
  static const String _phone = 'phone';
  static const String _bloodGroup = 'bloodGroup';

  static Future init() async {
    return _prefs = await SharedPreferences.getInstance();
  }

  // save full name
  static Future setFullName(String fullName) async {
    return _prefs!.setString(_fullName, fullName);
  }

  // save phone number
  static Future setPhone(String phone) async {
    return _prefs!.setString(_phone, phone);
  }

  // save blood group
  static Future setBloodGroup(String bloodGroup) async {
    return _prefs!.setString(_bloodGroup, bloodGroup);
  }

  // get full name
  static String? getFullName() {
    return _prefs!.getString(_fullName) ?? "";
  }

  // get phone number
  static String? getPhone() {
    return _prefs!.getString(_phone) ?? "";
  }

  // get blood group
  static String? getBloodGroup() {
    return _prefs!.getString(_bloodGroup) ?? "";
  }
}
