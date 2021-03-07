import 'package:bloc/bloc.dart';
import 'package:bloc_architecture_app/presentation/themes/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState(themeMode: ThemeMode.light)) {
    updateAppTheme();
  }

  void updateAppTheme() {
    final currentBrightness = AppTheme.currentSystemBrightness;
    _setTheme(currentBrightness == Brightness.light ? ThemeMode.light : ThemeMode.dark);
  }

  void _setTheme(ThemeMode themeMode) {
    AppTheme.setStatusBarAndNavigationBarColors(themeMode);
    emit(ThemeState(themeMode: themeMode));
  }

  @override
  String toString() {
    return 'ThemeCubit init: $state';
  }
}
