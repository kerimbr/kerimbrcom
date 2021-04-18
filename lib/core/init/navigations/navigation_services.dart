
import 'package:flutter/material.dart';
import 'package:kerimbr_com/core/init/navigations/INavigatorService.dart';

class NavigationService implements INavigatorService{
  static NavigationService _instance = NavigationService._init();
  static NavigationService get instance => _instance;

  NavigationService._init();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();
  final removeOldRoutes = (Route<dynamic> route) => false;

  @override
  Future<void> navigateToPage(String path,Object object) async{
    await navigatorKey.currentState!.pushNamed(path,arguments: object);
  }

  @override
  Future<void> navigateToPageClear(String path, Object object) async{
    await navigatorKey.currentState!.pushNamedAndRemoveUntil(path,removeOldRoutes,arguments: object);
  }

}