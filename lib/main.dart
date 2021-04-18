import 'package:flutter/material.dart';
import 'package:kerimbr_com/core/constants/navigation_constants.dart';
import 'package:kerimbr_com/core/init/navigations/navigation_route.dart';
import 'package:kerimbr_com/core/init/navigations/navigation_services.dart';
import 'package:kerimbr_com/core/init/notifier/providers_init.dart';
import 'package:kerimbr_com/core/init/notifier/theme_notifier.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiProvider(
    providers: [...ApplicationProviders.instance!.dependItems],
    child: KerimBrComApp(),
  ));
}

class KerimBrComApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kerim Bora',
      debugShowCheckedModeBanner: false,
      theme: Provider.of<ThemeNotifier>(context).currentTheme,
      navigatorKey: NavigationService.instance.navigatorKey,
      routes: NavigationRoutes.instance.allRoutes(context),
      initialRoute: NavigationConstants.ROOT,
    );
  }
}
