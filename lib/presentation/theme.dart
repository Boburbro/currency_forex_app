import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyColors {
  static const bannerColor = Color(0xFF3075FA);
  static const subTextColor = Color(0xFF9DC0F4);
  static const titleColor = Color(0xFF707578);
  static const darkRectangleColor = Color(0xFF2F3247);
}

ThemeData theme = ThemeData(
  brightness: Brightness.light,
  fontFamily: GoogleFonts.roboto().fontFamily,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: MyColors.titleColor,
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: GoogleFonts.roboto().fontFamily,
  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      color: MyColors.titleColor,
    ),
  ),
);

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = theme;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == theme) {
      themeData = darkTheme;
    } else {
      themeData = theme;
    }
  }
}
