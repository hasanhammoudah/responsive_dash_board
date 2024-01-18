import 'package:flutter/material.dart';
import 'package:real_responsive_and_adaptive_design/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w400,
      color: const Color(0xff064060),
    );
  }

  static TextStyle styleMedium16(context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w500,
      color: const Color(0xff064060),
    );
  }

  static TextStyle styleSemiBold16(context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w600,
      color: const Color(0xff064060),
    );
  }

  static TextStyle styleSemiBold20(context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w600,
      color: const Color(0xff064060),
    );
  }

  static TextStyle styleRegular12(context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontWeight: FontWeight.w400,
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle styleSemiBold24(context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
      color: const Color(0xff4EB7F2),
    );
  }

  static TextStyle styleRegular14(context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontWeight: FontWeight.w400,
      color: const Color(0xffAAAAAA),
    );
  }

  static TextStyle styleSemiBold18(context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontWeight: FontWeight.w600,
      color: const Color(0xffffffff),
    );
  }

  static TextStyle styleBold16(context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontWeight: FontWeight.w700,
      color: const Color(0xff4EB7F2),
    );
  }

  static TextStyle styleMedium20(context) {
    return TextStyle(
      fontFamily: "Montserrat",
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontWeight: FontWeight.w500,
      color: const Color(0xffffffff),
    );
  }
}

// 1- scaleFactor
// 2- responsive fontSize
// 3- min, max fontSize

double getResponsiveFontSize(BuildContext context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  // print(
  //    'base font size =  $fontSize lowerlimit = $lowerLimit upperlimit = $upperLimit,responsive font size = $responsiveFontSize,final fontSize = ${responsiveFontSize.clamp(lowerLimit, upperLimit)}');
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(
  BuildContext context,
) {
  double width = MediaQuery.sizeOf(context).width;
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // double width = physicalWidth / devicePixelRatio;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1920;
  }
}
