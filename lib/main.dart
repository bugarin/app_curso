import 'package:app_curso/design_system/buttons.dart';
import 'package:app_curso/design_system/colors.dart';
import 'package:app_curso/design_system/size.dart';
import 'package:app_curso/design_system/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    DafiSize dafiSize = DafiSize(context);
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  SvgPicture.asset('assets/images/flechitas.svg',
                      color: DafiColors.primary,
                      width: dafiSize.getWidth(390),
                      height: dafiSize.getHeight(319)),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 32),
                      child: Icon(Icons.account_balance,
                          color: DafiColors.primary,
                          size: dafiSize.getPixel(142)),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: dafiSize.getPixel(178)),
                      Container(
                        width: dafiSize.getWidth(143),
                        height: dafiSize.getHeight(62),
                        decoration: BoxDecoration(
                          color: DafiColors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: DafiTextH1(text: 'RUBROS'),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 298, 24, 0),
                    child: volver(context),
                  ),
                ],
              ),
              // SizedBox(height: 100),
              // getH1('Cabecero 01'),
              // SizedBox(height: 20),
              // getH2('Cabecero 02'),
              // DafiText(text: 'Cabecero 01', fontSize: 10),
              // DafiTextH1(text: 'Cabecero 01'),
              // SizedBox(height: 20),
              // DafiTextH2(text: 'Cabecero 02', color: DafiColors.secondary),
              // SizedBox(height: 100),
              // DafiTextH2(text: 'Botones', color: DafiColors.secondary),
              // SizedBox(height: 20),
              // DafiButton(
              //   text: 'Imprimir',
              //   color: DafiColors.primary,
              //   icon: Icons.print,
              //   onPressed: () {
              //     print('Botón 01 presionado');
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget volver(BuildContext context) {
    DafiSize dafiSize = DafiSize(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      width: dafiSize.getWidth(342),
      height: dafiSize.getHeight(42),
      decoration: BoxDecoration(
        color: DafiColors.primary,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          Expanded(
            child: DafiText(
                text: 'Volver',
                fontSize: dafiSize.getPixel(14),
                color: DafiColors.white,
                bold: true),
          ),
          Icon(Icons.arrow_back_ios, color: DafiColors.white),
        ],
      ),
    );
  }
}
