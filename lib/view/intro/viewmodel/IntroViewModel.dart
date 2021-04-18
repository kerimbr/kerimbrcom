

import 'package:mobx/mobx.dart';
import 'package:url_launcher/url_launcher.dart';
part 'IntroViewModel.g.dart';


class IntroViewModel = _IntroViewModelBase with _$IntroViewModel;

abstract class _IntroViewModelBase with Store{


  void launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';




}