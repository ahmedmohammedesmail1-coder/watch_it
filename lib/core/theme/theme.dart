import 'package:flutter/material.dart';

import 'package:watch_it/core/theme/colors.dart';
import 'package:watch_it/core/theme/text_style.dart';

class ThemeAppManager {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: ColorsManager.primaryColor,
    scaffoldBackgroundColor: ColorsManager.scaffoldBackgroundColor,
    appBarTheme: AppBarTheme(
        backgroundColor: ColorsManager.primaryColor,
        titleTextStyle:
            TextStyleManager.bold20.copyWith(color: ColorsManager.primaryColor),
        iconTheme: const IconThemeData(color: ColorsManager.iconsColor)),
  );
  static final ThemeData darkTheme = ThemeData(
    primaryColor: ColorsManager.primaryDarkColor,
    scaffoldBackgroundColor: ColorsManager.scaffoldBackgroundDarkColor,
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorsManager.primaryDarkColor,
      titleTextStyle: TextStyle(),
      iconTheme: IconThemeData(
        color: ColorsManager.iconsColor,
      ),
    ),
  );
}
