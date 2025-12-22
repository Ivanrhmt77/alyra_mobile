import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

enum AppThemeMode { system, light, dark }

class ThemeState {
  final AppThemeMode mode;
  const ThemeState(this.mode);
}

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(const ThemeState(AppThemeMode.system));

  void setMode(AppThemeMode mode) => emit(ThemeState(mode));

  ThemeMode get themeMode {
    switch (state.mode) {
      case AppThemeMode.light:
        return ThemeMode.light;
      case AppThemeMode.dark:
        return ThemeMode.dark;
      case AppThemeMode.system:
        return ThemeMode.system;
    }
  }
}
