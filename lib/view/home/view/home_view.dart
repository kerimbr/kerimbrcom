import 'package:animated_icon_button/animated_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kerimbr_com/core/base/state/base_state.dart';
import 'package:kerimbr_com/core/base/view/base_view.dart';
import 'package:kerimbr_com/core/constants/enums/app_themes_enum.dart';
import 'package:kerimbr_com/core/extensions/context_extension.dart';
import 'package:kerimbr_com/view/about/about.dart';
import 'package:kerimbr_com/view/home/viewmodel/home_viewmodel.dart';
import 'package:kerimbr_com/view/intro/intro_view.dart';
import 'package:kerimbr_com/view/portfolio/portfolio_dart.dart';
import 'package:kerimbr_com/widgets/footer/footer.dart';
import 'package:line_icons/line_icons.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends BaseState<HomeView> {
  late HomeViewModel viewModel;

  final introWidgetKey = new GlobalKey(debugLabel: "__intoWidgetKey");
  final aboutWidgetKey = new GlobalKey(debugLabel: "__aboutWidgetKey");
  final portfolioWidgetKey = new GlobalKey(debugLabel: "__portfolioWidgetKey");

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      viewModel: HomeViewModel(),
      onModelReady: (model) {
        viewModel = model;
        viewModel.setContext(context);
        viewModel.setScrollController();
      },
      onPageBuilder: (context) => buildPage,
    );
  }

  Widget get buildPage {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: AppBar().preferredSize,
        child: Observer(
          builder: (context) => AppBar(
            title: Text(
              "Kerim Bora",
            ),
            elevation: viewModel.appBarElevation,
            backgroundColor: context.theme.scaffoldBackgroundColor,
            actions: [
              // Giriş Button
              context.screenWidth>300 ? Padding(
                padding: EdgeInsets.symmetric(horizontal: dynamicWidth(0.005)),
                child: TextButton(
                    onPressed: () => Scrollable.of(introWidgetKey.currentContext!)!.position.ensureVisible(
                        introWidgetKey.currentContext!.findRenderObject()!,
                        duration: Duration(milliseconds: 600)),
                    child: Text(
                      "Giriş",
                      style: context.theme.textTheme.bodyText1,
                    )),
              ) : SizedBox(),
              // Hakkımda Button
              context.screenWidth>300 ? Padding(
                padding: EdgeInsets.symmetric(horizontal: dynamicWidth(0.005)),
                child: TextButton(
                    onPressed: () => Scrollable.of(aboutWidgetKey.currentContext!)!.position.ensureVisible(
                        aboutWidgetKey.currentContext!.findRenderObject()!,
                        duration: Duration(milliseconds: 600)),
                    child: Text(
                      "Hakkımda",
                      style: context.theme.textTheme.bodyText1,
                    )),
              ) : SizedBox(),
              // Portfolyo Button
              context.screenWidth>300 ? Padding(
                padding: EdgeInsets.symmetric(horizontal: dynamicWidth(0.005)),
                child: TextButton(
                    onPressed: () => Scrollable.of(portfolioWidgetKey.currentContext!)!.position.ensureVisible(
                        portfolioWidgetKey.currentContext!.findRenderObject()!,
                        duration: Duration(milliseconds: 600)),
                    child: Text(
                      "Portfolyo",
                      style: context.theme.textTheme.bodyText1,
                    )),
              ) : SizedBox(),

              // Theme Switch Button
              Padding(
                padding: EdgeInsets.symmetric(horizontal: dynamicWidth(0.005)),
                child: AnimatedIconButton(
                  icons: [
                    AnimatedIconItem(
                        icon: Icon(
                          LineIcons.moon,
                          color: context.theme.primaryIconTheme.color,
                        ),
                        onPressed: () {
                          viewModel.changeTheme(AppThemes.DARK);
                        }),
                    AnimatedIconItem(
                        icon: Icon(
                          LineIcons.sun,
                          color: context.theme.primaryIconTheme.color,
                        ),
                        onPressed: () {
                          viewModel.changeTheme(AppThemes.LIGHT);
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: context.screenWidth,
        height: context.screenHeight,
        child: SingleChildScrollView(
          controller: viewModel.scrollController,
          child: Column(
            children: [
              Container(
                key: introWidgetKey,
                child: IntroView(),
              ),
              Container(
                key: aboutWidgetKey,
                child: homePageTitle("Hakkımda"),
              ),
              About(),
              Container(
                key: portfolioWidgetKey,
                child: homePageTitle("Portfolyo"),
              ),
              PortfolioView(),
              context.screenWidth>330?Footer():SizedBox(),
            ],
          ),
        ),
      ),
    );
  }

  Widget homePageTitle(String title) {
    return Container(
      width: context.screenWidth,
      color: context.theme.cardColor,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: SelectableText(
            title,
            style: themeData.textTheme.headline3!.copyWith(
              color: context.textTheme.headline3!.color
            ),
          ),
        ),
      ),
    );
  }
}
