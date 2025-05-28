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
    List<Widget> opcionesUsuario = [];

    Function listItem = (String text, IconData icon) {
      return Container(
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 4),
        child: Row(
          children: [
            Icon(icon, size: 22),
            SizedBox(width: 13),
            Expanded(
              child: DafiText(
                  text: text,
                  fontSize: 16,
                  bold: true,
                  color: DafiColors.black1),
            ),
            Icon(Icons.arrow_forward_ios, size: 12),
          ],
        ),
      );
    };

    opcionesUsuario.add(listItem('Información personal', Icons.person));
    opcionesUsuario.add(listItem('Información laboral', Icons.work));

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
                      child: Icon(
                        Icons.account_balance,
                        color: DafiColors.primary,
                        size: dafiSize.getPixel(142),
                        shadows: [
                          BoxShadow(
                              color: Colors.white,
                              blurRadius: 20,
                              offset: Offset(0.0, 0.0),
                              spreadRadius: 0,
                              blurStyle: BlurStyle.solid)
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: dafiSize.getPixel(178)),
                      Container(
                        width: dafiSize.getWidth(343),
                        height: dafiSize.getHeight(62),
                        margin: EdgeInsets.symmetric(horizontal: 24),
                        decoration: BoxDecoration(
                          color: DafiColors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Center(child: DafiTextH1(text: 'RUBROS')),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 298, 24, 0),
                    child: volver(context),
                  ),
                ],
              ),
              Container(
                width: dafiSize.getWidth(342),
                margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                decoration: BoxDecoration(
                  color: DafiColors.gray5,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  children: opcionesUsuario,
                ),
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
