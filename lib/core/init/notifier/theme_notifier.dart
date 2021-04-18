import 'package:flutter/material.dart';
import 'package:kerimbr_com/core/constants/enums/app_themes_enum.dart';
import 'package:kerimbr_com/core/init/theme/app_theme_dark.dart';
import 'package:kerimbr_com/core/init/theme/app_theme_light.dart';

class ThemeNotifier extends ChangeNotifier{

  ThemeData _currentTheme = AppThemeLight.instance!.theme;
  AppThemes _currentAppThemes = AppThemes.LIGHT;
  ThemeData get currentTheme => _currentTheme;
  AppThemes get currentAppThemes => _currentAppThemes;
  ThemeData get otherTheme {
    if(currentAppThemes == AppThemes.LIGHT){
      return AppThemeDark.instance!.theme;
    }else{
      return AppThemeLight.instance!.theme;
    }
  }

  void changeTheme(AppThemes themes){

    if(themes == AppThemes.LIGHT){
      _currentTheme = AppThemeLight.instance!.theme;
      _currentAppThemes = AppThemes.LIGHT;
    }else{
      _currentTheme = AppThemeDark.instance!.theme;
      _currentAppThemes = AppThemes.DARK;
    }

    notifyListeners();
  }


  void switchTheme(){

    if(_currentAppThemes == AppThemes.LIGHT){
      _currentTheme = AppThemeDark.instance!.theme;
      _currentAppThemes = AppThemes.DARK;
    }else{
      _currentTheme = AppThemeLight.instance!.theme;
      _currentAppThemes = AppThemes.LIGHT;
    }

    notifyListeners();
  }


}