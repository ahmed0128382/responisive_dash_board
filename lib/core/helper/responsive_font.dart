import 'package:flutter/material.dart';

double getResponsiveFontSize(BoxConstraints constraints,
    {required double fontSize}) {
  double scaleFactor = getScaleFactor(constraints); // Use parent constraints
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BoxConstraints constraints) {
  double width = constraints.maxWidth; // Parent widget width
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}
