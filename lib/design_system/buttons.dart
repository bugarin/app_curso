import 'package:app_curso/design_system/text.dart';
import 'package:flutter/material.dart';

class DafiButton extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final IconData icon;

  const DafiButton({
    super.key,
    required this.text,
    required this.color,
    this.fontSize = 12,
    this.icon = Icons.add,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(width: 10),
          DafiText(text: 'Botón 01', fontSize: 16, color: Colors.white),
        ],
      ),
      style: ElevatedButton.styleFrom(backgroundColor: color),
    );
  }
}
