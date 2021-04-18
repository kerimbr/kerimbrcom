import 'package:flutter/cupertino.dart';
import 'package:kerimbr_com/core/constants/enums/app_themes_enum.dart';
import 'package:kerimbr_com/core/init/notifier/theme_notifier.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';

part 'home_viewmodel.g.dart';

class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  late BuildContext context;

  final double targetElevation = 4;

  @observable
  double appBarElevation = 0;

  late ScrollController scrollController;

  void setScrollController() {
    scrollController = ScrollController();
    scrollController.addListener(_scrollListener);
  }

  @action
  void _scrollListener() {
    late double newElevation =
        scrollController.offset <= scrollController.position.minScrollExtent && !scrollController.position.outOfRange
            ? 0
            : targetElevation;

    if (appBarElevation != newElevation) {
      appBarElevation = newElevation;
    }
  }

  void setContext(BuildContext context) {
    this.context = context;
  }

  void switchTheme() {
    Provider.of<ThemeNotifier>(context, listen: false).switchTheme();
  }

  void changeTheme(AppThemes themes){
    Provider.of<ThemeNotifier>(context, listen: false).changeTheme(themes);
  }


  @observable
  int number = 0;

  @action
  void incrementNumber() {
    number++;
  }
}
