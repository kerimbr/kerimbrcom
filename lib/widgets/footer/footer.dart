import 'package:flutter/material.dart';
import 'package:kerimbr_com/core/base/state/base_stateless.dart';
import 'package:kerimbr_com/core/extensions/context_extension.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';


class Footer extends BaseStateless {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: context.screenWidth,
          color: Colors.grey.shade900,
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: dynamicWidth(
                context,
                context.screenWidth > 800 ? 0.2 : 0.08,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:10),
                  child: Text(
                      "Kerim Bora",
                    style: context.textTheme.headline6!.copyWith(
                      color: Colors.grey.shade200,
                      fontWeight: FontWeight.w100
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20),
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Email Button
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: dynamicWidth(context,0.01)),
                        child: Tooltip(
                          message: "E-Posta Gönder",
                          child: IconButton(
                            icon: Icon(
                              Icons.email_outlined,
                              color: context.colors.secondary,
                            ),
                            onPressed: ()=>launchURL("mailto:dev.kerimbora@gmail.com"),
                          ),
                        ),
                      ),
                      // LinkedIn Button
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: dynamicWidth(context,0.008)),
                        child: Tooltip(
                          message: "LinkedIn",
                          child: IconButton(
                            icon: Icon(
                              LineIcons.linkedinIn,
                              color: context.colors.secondary,
                            ),
                            onPressed: ()=>launchURL("https://www.linkedin.com/in/devkerimbr"),
                          ),
                        ),
                      ),
                      // Github Button
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: dynamicWidth(context,0.01)),
                        child: Tooltip(
                          message: "GitHub",
                          child: IconButton(
                            icon: Icon(
                              LineIcons.github,
                              color: context.colors.secondary,
                            ),
                            onPressed:  ()=>launchURL("https://github.com/kerimbr"),
                          ),
                        ),
                      ),
                      // Medium Button
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: dynamicWidth(context,0.01)),
                        child: Tooltip(
                          message: "Blog - Medium",
                          child: IconButton(
                            icon: Icon(
                              LineIcons.medium,
                              color: context.colors.secondary,
                            ),
                            onPressed: () => launchURL("https://medium.com/@dev.kerimbora"),
                          ),
                        ),
                      ),
                      // Instagram Button
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: dynamicWidth(context,0.008)),
                        child: Tooltip(
                          message: "Instagram",
                          child: IconButton(
                            icon: Icon(
                              LineIcons.instagram,
                              color: context.colors.secondary,
                            ),
                            onPressed: ()=>launchURL("https://www.instagram.com/dev.kerimbr"),
                          ),
                        ),
                      ),
                      // Twitter Button
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: dynamicWidth(context,0.008)),
                        child: Tooltip(
                          message: "Twitter",
                          child: IconButton(
                            icon: Icon(
                              LineIcons.twitter,
                              color: context.colors.secondary,
                            ),
                            onPressed: ()=>launchURL("https://twitter.com/dev_kerimbr"),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20,bottom: 10),
                  child: ElevatedButton(
                      onPressed: ()=>launchURL("https://github.com/kerimbr/kerimbrcom"),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(LineIcons.github),
                          Text("Fork Me On Github")
                        ],
                      ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.pinkAccent
                      )
                    ),
                  ),
                )
              ],
            ),

          ),
        ),
        Container(
          height: dynamicHeight(context, 0.04),
          width: context.screenWidth,
          color: Colors.black,
          child: Center(
            child: Text(
              "© 2020-2021 Kerim Bora - kerimbr.com",
              style: context.textTheme.bodyText2!.copyWith(
                  color: Colors.grey.shade200,
                  fontWeight: FontWeight.w300
              ),
            ),
          ),
        )
      ],
    );
  }

  void launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
}
