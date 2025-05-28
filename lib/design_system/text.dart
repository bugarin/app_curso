import 'package:app_curso/design_system/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  final bool bold;

  const DafiText({
    super.key,
    required this.text,
    this.color = DafiColors.primary,
    required this.fontSize,
    this.bold = false,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: GoogleFonts.inter(
            textStyle: TextStyle(
                color: color,
                fontSize: fontSize,
                fontWeight: bold ? FontWeight.w800 : FontWeight.w400)));
  }
}

class DafiTextH1 extends DafiText {
  const DafiTextH1({super.key, required super.text, super.color})
      : super(fontSize: 34, bold: true);
}

class DafiTextH2 extends DafiText {
  const DafiTextH2({super.key, required super.text, super.color})
      : super(fontSize: 48, bold: true);
}
