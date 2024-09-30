import 'package:flutter/material.dart';

class AppTextTheme {
  AppTextTheme._();
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        color: Colors.white, fontSize: 32, fontWeight: FontWeight.w600),
    headlineMedium: const TextStyle().copyWith(
        color: Colors.black, fontSize: 28, fontWeight: FontWeight.w500),
    headlineSmall: const TextStyle().copyWith(
        color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400),
    titleLarge: const TextStyle().copyWith(
        color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
    titleMedium: const TextStyle().copyWith(
        color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
    titleSmall: const TextStyle().copyWith(
        color: Colors.black, fontSize: 10, fontWeight: FontWeight.w400),
    bodyLarge: const TextStyle().copyWith(color: Colors.black, fontSize: 16),
    bodyMedium: const TextStyle().copyWith(color: Colors.black, fontSize: 14),
    bodySmall: const TextStyle().copyWith(color: Colors.black, fontSize: 12),
    labelLarge: const TextStyle().copyWith(
        fontSize: 12, fontWeight: FontWeight.normal, color: Colors.black),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.black.withOpacity(0.5)),
  );
}
