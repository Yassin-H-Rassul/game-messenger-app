import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelper extends ChangeNotifier {
  late SharedPreferences prefs;
  String? selectedTheme;
  themeSetter(String theme) {
    selectedTheme = theme;
    notifyListeners();
  }


  setTheme(String theTheme) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString("theme", theTheme);
    themeSetter(theTheme);
  }

  void getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    selectedTheme = prefs.getString("theme");
    notifyListeners();
  }
}
