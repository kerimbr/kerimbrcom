import 'package:flutter/material.dart';
import 'package:kerimbr_com/core/base/state/base_state.dart';
import 'package:kerimbr_com/core/base/view/base_view.dart';
import 'package:kerimbr_com/core/extensions/context_extension.dart';
import 'package:kerimbr_com/view/intro/viewmodel/IntroViewModel.dart';
import 'package:line_icons/line_icons.dart';

class IntroView extends StatefulWidget {
  Key? key;

  IntroView({this.key});

  @override
  _IntroViewState createState() => _IntroViewState();
}

class _IntroViewState extends BaseState<IntroView> {
  late IntroViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return BaseView<IntroViewModel>(
        viewModel: IntroViewModel(),
        onModelReady: (model) {
          viewModel = model;
        },
        onPageBuilder: (context) => buildPage());
  }

  Widget buildPage() {
    return Container(
      width: context.screenWidth,
      height: context.screenHeight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Picture
          Container(
            width: 150,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(200),
                child: Image.network("/assets/images/me.png",fit: BoxFit.fitWidth,)
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle
            ),
          ),
          // Name & Surname
          Padding(
            padding: EdgeInsets.only(top: dynamicHeight(0.02)),
            child: SelectableText(
              "Kerim Bora",
              style: context.textTheme.headline2,
            ),
          ),
          // Titles
          Padding(
            padding: EdgeInsets.only(top: dynamicHeight(0.02)),
            child: SelectableText(
              "Flutter Developer",
              style: context.textTheme.headline5,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: dynamicHeight(0.02)),
            child: SelectableText(
              "Computer Engineering Student",
              style: context.textTheme.bodyText1,
            ),
          ),
          //Social
          Padding(
              padding: EdgeInsets.only(top: dynamicHeight(0.04)),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Email Button
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: dynamicWidth(0.01)),
                      child: Tooltip(
                        message: "E-Posta Gönder",
                        child: IconButton(
                          icon: Icon(
                            Icons.email_outlined,
                            color: context.colors.secondary,
                          ),
                          onPressed: () => viewModel.launchURL("mailto:dev.kerimbora@gmail.com"),
                        ),
                      ),
                    ),
                    // LinkedIn Button
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: dynamicWidth(0.008)),
                      child: Tooltip(
                        message: "LinkedIn",
                        child: IconButton(
                          icon: Icon(
                            LineIcons.linkedinIn,
                            color: context.colors.secondary,
                          ),
                          onPressed: () => viewModel.launchURL("https://www.linkedin.com/in/devkerimbr"),
                        ),
                      ),
                    ),
                    // Github Button
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: dynamicWidth(0.01)),
                      child: Tooltip(
                        message: "GitHub",
                        child: IconButton(
                          icon: Icon(
                            LineIcons.github,
                            color: context.colors.secondary,
                          ),
                          onPressed: () => viewModel.launchURL("https://github.com/kerimbr"),
                        ),
                      ),
                    ),
                    // Medium Button
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: dynamicWidth(0.01)),
                      child: Tooltip(
                        message: "Blog - Medium",
                        child: IconButton(
                          icon: Icon(
                            LineIcons.medium,
                            color: context.colors.secondary,
                          ),
                          onPressed: () => viewModel.launchURL("https://medium.com/@dev.kerimbora"),
                        ),
                      ),
                    ),
                    // Instagram Button
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: dynamicWidth(0.008)),
                      child: Tooltip(
                        message: "Instagram",
                        child: IconButton(
                          icon: Icon(
                            LineIcons.instagram,
                            color: context.colors.secondary,
                          ),
                          onPressed: () => viewModel.launchURL("https://www.instagram.com/dev.kerimbr"),
                        ),
                      ),
                    ),
                    // Twitter Button
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: dynamicWidth(0.008)),
                      child: Tooltip(
                        message: "Twitter",
                        child: IconButton(
                          icon: Icon(
                            LineIcons.twitter,
                            color: context.colors.secondary,
                          ),
                          onPressed: () => viewModel.launchURL("https://twitter.com/dev_kerimbr"),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
          // Arrow Icon
          Padding(
            padding: EdgeInsets.only(top: dynamicHeight(0.06)),
            child: Icon(
              LineIcons.angleDoubleDown,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
