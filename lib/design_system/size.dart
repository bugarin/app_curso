import 'package:flutter/material.dart';

class DafiSize {
  double mockupWidth = 390;
  double mockupHeight = 844;
  late double realHeight;
  late double realWidth;

  DafiSize(BuildContext context) {
    final size = MediaQuery.of(context).size;
    realHeight = size.height;
    realWidth = size.width;
  }

  double getWidth(double width) {
    return width / mockupWidth * realWidth;
  }

  double getHeight(double height) {
    return height / mockupHeight * realHeight;
  }

  double getPixel(double pixel) {
    return pixel / mockupHeight * realHeight;
  }
}
