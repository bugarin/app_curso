import 'package:app_curso/design_system/text.dart';
import 'package:flutter/material.dart';

class DafiButton extends StatelessWidget {
  final String text;
  final Color color;
  final double fontSize;
  final IconData icon;
  final VoidCallback onPressed;

  const DafiButton({
    super.key,
    required this.text,
    required this.color,
    this.fontSize = 12,
    this.icon = Icons.add,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(width: 10),
          DafiText(text: text, fontSize: 16, color: Colors.white),
        ],
      ),
    );
  }
}
