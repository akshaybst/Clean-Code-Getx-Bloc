
import 'package:flutter/material.dart';
import 'app_colors.dart';

ThemeData appTheme = ThemeData(
  scaffoldBackgroundColor: AppColors.background,
  primaryColor: AppColors.primary,
  fontFamily: 'Urbanist',
  textTheme: const TextTheme(
    bodyMedium: TextStyle(fontSize: 16),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      textStyle: const TextStyle(
        fontFamily: 'Urbanist',
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
    ),
  ),
);
