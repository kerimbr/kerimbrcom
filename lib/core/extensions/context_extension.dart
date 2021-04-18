import 'package:flutter/material.dart';
import 'package:kerimbr_com/core/constants/enums/app_themes_enum.dart';
import 'package:kerimbr_com/core/init/notifier/theme_notifier.dart';
import 'package:provider/provider.dart';

extension ContextExtension on BuildContext{

  MediaQueryData get mediaQuery => MediaQuery.of(this);

}

extension MediaQueryExtension on BuildContext{

  double get screenHeight => mediaQuery.size.height;
  double get screenWidth => mediaQuery.size.width;
  bool get isWebScreen => screenWidth>600;

}

extension ThemeExtension on BuildContext{

  ThemeData get theme => Theme.of(this);
  TextTheme get textTheme => theme.textTheme;
  ButtonThemeData get buttonThemeData => theme.buttonTheme;
  CardTheme get cardTheme => theme.cardTheme;
  IconThemeData get iconThemeData => theme.iconTheme;
  ColorScheme get colors => theme.colorScheme;
  AppThemes get currentAppThemes => Provider.of<ThemeNotifier>(this).currentAppThemes;
  ThemeData get otherTheme => Provider.of<ThemeNotifier>(this).otherTheme;

}