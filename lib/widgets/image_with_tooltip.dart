import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kerimbr_com/core/base/state/base_stateless.dart';

class SVGWithToolTip extends BaseStateless {
  String assetPath;
  String tooltipText;

  SVGWithToolTip(this.assetPath, this.tooltipText);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20),
      child: Tooltip(
        message: '$tooltipText',
        child: Container(
          width: 70,
          height: 70,
          child: SvgPicture.asset(
            assetPath
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
      ),
    );
  }
}
