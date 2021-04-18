import 'package:flutter/material.dart';
import 'package:kerimbr_com/core/base/state/base_stateless.dart';

class PortifolioCard extends BaseStateless {

  Icon cardIcon;
  String cardContent;
  String cardTitle;
  VoidCallback cardAction;

  PortifolioCard({
    required this.cardIcon,
    required this.cardContent,
    required this.cardTitle,
    required this.cardAction
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: cardIcon,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SelectableText(
                cardTitle,
              style: themeData(context).textTheme.headline6,
              textAlign: TextAlign.center,
              maxLines: 1,

            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SelectableText(
              cardContent,
              style: themeData(context).textTheme.bodyText1,
              textAlign: TextAlign.center,
              minLines: 5,
              maxLines: 5,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Ziyaret Et",
                  style: themeData(context).primaryTextTheme.bodyText2!.copyWith(
                    color: themeData(context).accentColor
                  ),
                ),
              ),
              onPressed: cardAction,
            ),
          ),
        ],
      ),
    );
  }
}
