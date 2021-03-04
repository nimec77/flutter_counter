import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

class AppTheme {
  static const lightBackgroundColor = Color(0xfff2f2f2);
  static const lightPrimaryColor = Color(0xfff2f2f2);
  static final lightAccentColor = Colors.blueGrey.shade200;
  static const lightParticlesColor = Color(0x44948282);

  static const darkBackgroundColor = Color(0xff1a2127);
  static const darkPrimaryColor = Color(0xff1a2127);
  static final darkAccentColor = Colors.blueGrey.shade600;
  static const darkParticlesColor = Color(0x441c2a3d);

  const AppTheme._();

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: lightPrimaryColor,
    accentColor: lightAccentColor,
    backgroundColor: lightBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: darkPrimaryColor,
    accentColor: darkAccentColor,
    backgroundColor: darkBackgroundColor,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static void setStatusBarAndNavigationBarColors(ThemeMode themeMode) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      systemNavigationBarIconBrightness: themeMode == ThemeMode.light ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: themeMode == ThemeMode.light ? lightBackgroundColor : darkBackgroundColor,
      systemNavigationBarDividerColor: Colors.transparent,
    ));
  }

  static Brightness get currentSystemBrightness => SchedulerBinding.instance.window.platformBrightness;
}

extension ThemeExtras on ThemeData {
  Color get particlesColor =>
      brightness == Brightness.light ? AppTheme.lightParticlesColor : AppTheme.darkParticlesColor;
}
