import 'package:flutter/material.dart';
import 'package:kerimbr_com/core/base/state/base_state.dart';
import 'package:kerimbr_com/core/extensions/context_extension.dart';
import 'package:kerimbr_com/widgets/portfolio_card.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class PortfolioView extends StatefulWidget {
  Key? key;

  PortfolioView({this.key});

  @override
  _PortfolioViewState createState() => _PortfolioViewState();
}

class _PortfolioViewState extends BaseState<PortfolioView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        key: widget.key,
        width: context.screenWidth,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(40),
        child: context.isWebScreen ? webBuild() : mobileBuild());
  }

  void _launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  Widget webBuild() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: dynamicWidth(context.screenWidth > 800 ? 0.2 : 0.08),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //title
          Padding(
            padding: EdgeInsets.only(top: dynamicHeight(0.02)),
            child: SelectableText(
              "Halka Açık 3 Örnek Projem",
              style: context.textTheme.headline5,
            ),
          ),
          // Project Cards
          Padding(
            padding: EdgeInsets.only(top: dynamicHeight(0.02)),
            child: Row(
              children: [
                //#1
                Expanded(
                  child: PortifolioCard(
                    cardIcon: Icon(
                      LineIcons.mobilePhone,
                      color: Colors.pinkAccent,
                      size: context.isWebScreen ? 40 : 120,
                    ),
                    cardTitle: "Stalker App",
                    cardContent:
                        "Stalker Flutter ile 2020 yılında geliştirdiğim Soru-Cevap formatında sosyal medya uygulamasıdır.",
                    cardAction: ()=>_launchURL("https://play.google.com/store/apps/details?id=com.kerimbora.stalkerbeta"),
                  ),
                ),
                //#2
                Expanded(
                  child: PortifolioCard(
                    cardIcon: Icon(
                      LineIcons.python,
                      color: Colors.blue,
                      size: context.isWebScreen ? 40 : 120,
                    ),
                    cardTitle: "Python ile Veri Görselleştirme",
                    cardContent:
                        "Python Veri İşleme ve Veri Görselleştirme ile yaptığım 'Turkiye Koronavirus(COVID-19) Analizi' Projesi",
                    cardAction: () =>_launchURL("https://www.kaggle.com/krmbrgs/turkiye-koronavirus-covid-19-analizi"),
                  ),
                ),
                //#3
                Expanded(
                  child: PortifolioCard(
                    cardIcon: Icon(
                      Icons.web_rounded,
                      color: Colors.deepOrangeAccent,
                      size: context.isWebScreen ? 40 : 120,
                    ),
                    cardTitle: "kerimbr.com",
                    cardContent: "Flutter Web ile geliştirdiğim kişisel web sayfası.",
                    cardAction: ()=>_launchURL("https://kerimbr.com/"),
                  ),
                )
              ],
            ),
          ),
          // All Links Button
          Padding(
            padding: EdgeInsets.only(top: dynamicHeight(0.02), bottom: dynamicHeight(0.02)),
            child: ElevatedButton(
              onPressed: ()=>_launchURL("https://linktr.ee/devkerim"),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                    "Hepsini Görüntüle",
                  style: context.textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.w300,
                    color: context.colors.onPrimary
                  ),
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(
                  context.colors.secondary
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                    )
                )
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget mobileBuild() {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: dynamicWidth(context.screenWidth > 800 ? 0.2 : 0.08),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //title
          Padding(
            padding: EdgeInsets.only(top: dynamicHeight(0.02)),
            child: SelectableText(
              "Halka Açık 3 Örnek Projem",
              style: context.textTheme.headline5,
            ),
          ),
          // Project Cards
          Padding(
            padding: EdgeInsets.only(top: dynamicHeight(0.02)),
            child: Column(
              children: [
                //#1
                PortifolioCard(
                  cardIcon: Icon(
                    LineIcons.mobilePhone,
                    color: Colors.pinkAccent,
                    size: context.isWebScreen ? 40 : 120,
                  ),
                  cardTitle: "Stalker App",
                  cardContent:
                  "Stalker Flutter ile 2020 yılında geliştirdiğim Soru-Cevap formatında sosyal medya uygulamasıdır.",
                  cardAction: ()=>_launchURL("https://play.google.com/store/apps/details?id=com.kerimbora.stalkerbeta"),
                ),
                //#2
                PortifolioCard(
                  cardIcon: Icon(
                    LineIcons.python,
                    color: Colors.blue,
                    size: context.isWebScreen ? 40 : 120,
                  ),
                  cardTitle: "Python ile Veri Görselleştirme",
                  cardContent:
                  "Python Veri İşleme ve Veri Görselleştirme ile yaptığım 'Turkiye Koronavirus(COVID-19) Analizi' Projesi",
                  cardAction: () =>_launchURL("https://www.kaggle.com/krmbrgs/turkiye-koronavirus-covid-19-analizi"),
                ),
                //#3
                PortifolioCard(
                  cardIcon: Icon(
                    Icons.web_rounded,
                    color: Colors.deepOrangeAccent,
                    size: context.isWebScreen ? 40 : 120,
                  ),
                  cardTitle: "kerimbr.com",
                  cardContent: "Flutter Web ile geliştirdiğim kişisel web sayfası.",
                  cardAction: ()=>_launchURL("https://kerimbr.com/"),
                )
              ],
            ),
          ),
          // All Links Button
          Padding(
            padding: EdgeInsets.only(top: dynamicHeight(0.02), bottom: dynamicHeight(0.02)),
            child: ElevatedButton(
              onPressed: ()=>_launchURL("https://linktr.ee/devkerim"),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Hepsini Görüntüle",
                  style: context.textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.w300,
                      color: context.colors.onPrimary
                  ),
                ),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      context.colors.secondary
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0),
                      )
                  )
              ),
            ),
          )
        ],
      ),
    );
  }
}
