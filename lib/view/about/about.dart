import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:kerimbr_com/core/base/state/base_state.dart';
import 'package:kerimbr_com/core/constants/enums/app_themes_enum.dart';
import 'package:kerimbr_com/core/extensions/context_extension.dart';

class About extends StatefulWidget {
  Key? key;

  About({this.key});

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends BaseState<About> {

  final ScrollController _scrollController = ScrollController();

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
                child: Scrollbar(
                  controller: _scrollController,
                  isAlwaysShown: true,
                  child: ListView(
                    shrinkWrap: true,
                    controller: _scrollController,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Tooltip(
                        message: "Flutter",
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:10),
                          child: FlutterLogo(
                            size: 50,
                          ),
                        ),
                      ),
                      Tooltip(
                        message: "ReactJS",
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:10),
                          child: Icon(
                              MaterialCommunityIcons.react,
                              size: 50,
                              color: Colors.lightBlueAccent,
                          ),
                        ),
                      ),
                      Tooltip(
                        message: "Firebase",
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:10),
                          child: Icon(
                            MaterialCommunityIcons.firebase,
                            size: 50,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                      Tooltip(
                        message: "Java",
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:10),
                          child: Icon(
                            MaterialCommunityIcons.language_java,
                            size: 50,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      Tooltip(
                        message: "NodeJS",
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:10),
                          child: Icon(
                            MaterialCommunityIcons.nodejs,
                            size: 50,
                            color: Colors.green,
                          ),
                        ),
                      ),
                      Tooltip(
                        message: "Python",
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:10),
                          child: Icon(
                            MaterialCommunityIcons.language_python,
                            size: 50,
                            color: Colors.blue.shade600,
                          ),
                        ),
                      ),
                      Tooltip(
                        message: "Redux",
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:10),
                          child: Icon(
                              Fontisto.redux,
                              size: 50,
                              color: Colors.deepPurpleAccent
                          ),
                        ),
                      ),
                      Tooltip(
                        message: "Unity 3D",
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:10),
                          child: Icon(
                            MaterialCommunityIcons.unity,
                            size: 50,
                            color: context.currentAppThemes == AppThemes.LIGHT ? Colors.grey.shade900 : Colors.grey.shade200
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
