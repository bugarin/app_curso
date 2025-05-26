import 'package:app_curso/design_system/colors.dart';
import 'package:flutter/material.dart';

// Widget getH1(String text, {Color color = DafiColors.primary}) {
//   return Text(text, style: TextStyle(color: color, fontSize: 56));
// }

// Widget getH2(String text, {Color color = DafiColors.primary}) {
//   return Text(text, style: TextStyle(color: color, fontSize: 48));
// }

class DafiText extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;

  const DafiText({
    super.key,
    required this.text,
    this.color = DafiColors.primary,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(color: color, fontSize: fontSize));
  }
}

class DafiTextH1 extends DafiText {
  const DafiTextH1({super.key, required super.text, super.color})
    : super(fontSize: 56);
}

class DafiTextH2 extends DafiText {
  const DafiTextH2({super.key, required super.text, super.color})
    : super(fontSize: 48);
}
