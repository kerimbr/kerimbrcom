import 'package:flutter/material.dart';
import 'package:kerimbr_com/core/base/state/base_state.dart';
import 'package:kerimbr_com/core/extensions/context_extension.dart';
import 'package:kerimbr_com/widgets/image_with_tooltip.dart';

class About extends StatefulWidget {
  Key? key;

  About({this.key});

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends BaseState<About> {
  @override
  Widget build(BuildContext context) {
    return Container(
      key: widget.key,
      width: context.screenWidth,
      margin: EdgeInsets.symmetric(
        horizontal: dynamicWidth(
          context.screenWidth > 800 ? 0.2 : 0.08,
        ),
      ),
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SelectableText(
              "Merhaba 👋",
            style: context.textTheme.headline4!.copyWith(
              fontWeight: FontWeight.w600
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: SelectableText(
              "Ben Kerim Bora, 2000 Yılında Sivas'ta Doğdum.\n\n"
                  "Sivas'da yaşıyor ve Cumhuriyet Üniversitesi Bilgisayar Mühendisliği bölümünde eğitimime devam ediyorum.\n\n"
                  "Full-Stack Mobil Uygulamalar Geliştiriyorum.",
              style: context.textTheme.headline5!.copyWith(
                  fontWeight: FontWeight.w300
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Center(
              child: Container(
                width: dynamicWidth(0.5),
                height: 70,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SVGWithToolTip("asset/svg/flutter.svg","Flutter"),
                    SVGWithToolTip("asset/svg/react.svg","ReactJs"),
                    SVGWithToolTip("asset/svg/firebase.svg","Firebase"),
                    SVGWithToolTip("asset/svg/java.svg","Java"),
                    SVGWithToolTip("asset/svg/nodejs.svg","NodeJS"),
                    SVGWithToolTip("asset/svg/python.svg","Python"),
                    SVGWithToolTip("asset/svg/redux.svg","Redux"),
                    SVGWithToolTip("asset/svg/unity.svg","Unity 3D"),

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
