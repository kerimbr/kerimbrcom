import 'package:flutter/material.dart';

class UnknownView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: SelectableText(
          "404 \n Sayfa Bulunamadı !",
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
