import 'package:app_curso/design_system/buttons.dart';
import 'package:app_curso/design_system/colors.dart';
import 'package:app_curso/design_system/text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              // SizedBox(height: 100),
              // getH1('Cabecero 01'),
              // SizedBox(height: 20),
              // getH2('Cabecero 02'),
              SizedBox(height: 100),
              DafiText(text: 'Cabecero 01', fontSize: 10),
              DafiTextH1(text: 'Cabecero 01'),
              SizedBox(height: 20),
              DafiTextH2(text: 'Cabecero 02', color: DafiColors.secondary),
              SizedBox(height: 100),
              DafiTextH2(text: 'Botones', color: DafiColors.secondary),
              SizedBox(height: 20),
              DafiButton(
                text: 'Botón 01',
                color: DafiColors.primary,
                icon: Icons.delete,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
