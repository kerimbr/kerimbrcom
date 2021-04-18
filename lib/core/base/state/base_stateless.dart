import 'package:flutter/material.dart';

abstract class BaseStateless extends StatelessWidget{


  ThemeData themeData(BuildContext context) => Theme.of(context);

  double dynamicHeight(BuildContext context,double value) => MediaQuery.of(context).size.height * value;
  double dynamicWidth(BuildContext context, double value) => MediaQuery.of(context).size.width * value;


}