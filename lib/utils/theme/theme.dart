import 'package:flutter/material.dart';
import 'package:ohms/utils/colors/colors.dart';
import 'package:ohms/utils/theme/custom_themes/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: AppColor.primaryColor,
      scaffoldBackgroundColor: AppColor.bgColor,
      textTheme: AppTextTheme.lightTextTheme);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: AppColor.primaryColor,
      scaffoldBackgroundColor: AppColor.bgColor);
}
