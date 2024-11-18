import 'package:flutter/material.dart';
import 'package:quatre_c/utils/constants.dart';

abstract class AppStyles {
  static TextStyle style14Regular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 14),
      fontWeight: FontWeight.normal,
      fontFamily: FONT_FAMILY,
    );
  }

  static TextStyle style11Regular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 11),
      fontWeight: FontWeight.normal,
      fontFamily: FONT_FAMILY,
    );
  }

  static TextStyle style16Regular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontWeight: FontWeight.normal,
      fontFamily: FONT_FAMILY,
    );
  }

  static TextStyle style18Regular(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 18),
      fontWeight: FontWeight.normal,
      fontFamily: FONT_FAMILY,
    );
  }

  static TextStyle style16Medium(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontWeight: FontWeight.w500,
      fontFamily: FONT_FAMILY,
    );
  }

  static TextStyle style13Medium(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 13),
      fontWeight: FontWeight.w500,
      fontFamily: FONT_FAMILY,
    );
  }

  static TextStyle style19Medium(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 19),
      fontWeight: FontWeight.w500,
      fontFamily: FONT_FAMILY,
    );
  }

  static TextStyle style13SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 13),
      fontWeight: FontWeight.w600,
      fontFamily: FONT_FAMILY,
    );
  }

  static TextStyle style16SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 16),
      fontWeight: FontWeight.w600,
      fontFamily: FONT_FAMILY,
    );
  }

  static TextStyle style18SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 18),
      fontWeight: FontWeight.w600,
      fontFamily: FONT_FAMILY,
    );
  }

  static TextStyle style20SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 20),
      fontWeight: FontWeight.w600,
      fontFamily: FONT_FAMILY,
    );
  }

  static TextStyle style24SemiBold(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontsize: 24),
      fontWeight: FontWeight.w800,
      fontFamily: FONT_FAMILY,
    );
  }
}

double getResponsiveFontSize(BuildContext context, {required double fontsize}) {
  double scaleFactor = getScaleFactor(fontsize, context);
  double responsiveFontSize = fontsize * scaleFactor;

  double lowerLimit = fontsize * 0.5;
  double upperLimit = fontsize * 1.3;

  responsiveFontSize = responsiveFontSize.clamp(lowerLimit, upperLimit);

  return responsiveFontSize;
}

double getScaleFactor(double fontsize, BuildContext context) {
  var width = MediaQuery.sizeOf(context).width;

  if (width < 600) {
    return width / 380;
  } else {
    return width / 800;
  }
}