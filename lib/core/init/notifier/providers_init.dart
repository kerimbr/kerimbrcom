
import 'package:kerimbr_com/core/init/navigations/navigation_services.dart';
import 'package:kerimbr_com/core/init/notifier/theme_notifier.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ApplicationProviders{
  static ApplicationProviders? _instance;
  static ApplicationProviders? get instance{
    if(_instance == null) _instance = ApplicationProviders._init();
    return _instance;
  }

  ApplicationProviders._init();

  List<SingleChildWidget> singleItems = [];
  List<SingleChildWidget> dependItems = [
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(),
    ),
    Provider.value(value: NavigationService.instance)
  ];
  List<SingleChildWidget> uiChangesItems = [];

}