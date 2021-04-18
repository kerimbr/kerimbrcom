import 'package:flutter/material.dart';
import 'package:kerimbr_com/core/constants/navigation_constants.dart';
import 'package:kerimbr_com/view/home/view/home_view.dart';

class NavigationRoutes{
  static NavigationRoutes _instance = NavigationRoutes._init();
  static NavigationRoutes get instance => _instance;

  NavigationRoutes._init();


  Map<String, Widget Function(BuildContext context)> allRoutes(BuildContext context){
    return {
      NavigationConstants.ROOT : (context)=>HomeView(),
    };
  }


  MaterialPageRoute standardNavigate(Widget widget){
    return MaterialPageRoute(builder: (context)=>widget);
  }

}