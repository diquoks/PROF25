import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:matule_uikit/matule_uikit.dart';

class Styles {
  final Palette palette;
  final String _family = "Roboto";
  final String _package = "matule_uikit";

  Styles({required this.palette});

  TextStyle get title1Semibold24 => TextStyle(
    fontFamily: _family,
    package: _package,
    fontWeight: FontWeight.w600,
    fontSize: 24.sp,
    height: 28 / 24,
    letterSpacing: (24 * 0.0033).sp,
  );

  TextStyle get title1ExtraBold24 => TextStyle(
    fontFamily: _family,
    package: _package,
    fontWeight: FontWeight.w800,
    fontSize: 24.sp,
    height: 28 / 24,
    letterSpacing: (24 * 0.0033).sp,
  );

  TextStyle get title2Regular20 => TextStyle(
    fontFamily: _family,
    package: _package,
    fontWeight: FontWeight.w400,
    fontSize: 20.sp,
    height: 28 / 20,
    letterSpacing: (20 * 0.0038).sp,
  );

  TextStyle get title2Semibold20 => TextStyle(
    fontFamily: _family,
    package: _package,
    fontWeight: FontWeight.w600,
    fontSize: 20.sp,
    height: 28 / 20,
    letterSpacing: (20 * 0.0038).sp,
  );

  TextStyle get title2ExtraBold20 => TextStyle(
    fontFamily: _family,
    package: _package,
    fontWeight: FontWeight.w800,
    fontSize: 20.sp,
    height: 28 / 20,
    letterSpacing: (20 * 0.0038).sp,
  );

  TextStyle get title3Regular17 => TextStyle(
    fontFamily: _family,
    package: _package,
    fontWeight: FontWeight.w400,
    fontSize: 17.sp,
    height: 24 / 17,
    letterSpacing: 0,
  );

  TextStyle get title3Medium17 => TextStyle(
    fontFamily: _family,
    package: _package,
    fontWeight: FontWeight.w500,
    fontSize: 17.sp,
    height: 24 / 17,
    letterSpacing: 0,
  );

  TextStyle get title3Semibold17 => TextStyle(
    fontFamily: _family,
    package: _package,
    fontWeight: FontWeight.w600,
    fontSize: 17.sp,
    height: 24 / 17,
    letterSpacing: 0,
  );

  TextStyle get headlineRegular16 => TextStyle(
    fontFamily: _family,
    package: _package,
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    height: 20 / 16,
    letterSpacing: (16 * -0.0032).sp,
  );

  TextStyle get headlineMedium16 => TextStyle(
    fontFamily: _family,
    package: _package,
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    height: 20 / 16,
    letterSpacing: (16 * -0.0032).sp,
  );

  TextStyle get textRegular15 => TextStyle(
    fontFamily: _family,
    package: _package,
    fontWeight: FontWeight.w400,
    fontSize: 15.sp,
    height: 20 / 15,
    letterSpacing: 0,
  );

  TextStyle get textMedium15 => TextStyle(
    fontFamily: _family,
    package: _package,
    fontWeight: FontWeight.w400,
    fontSize: 15.sp,
    height: 20 / 15,
    letterSpacing: 0,
  );

  TextStyle get captionRegular14 => TextStyle(
    fontFamily: _family,
    package: _package,
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    height: 20 / 14,
    letterSpacing: 0,
  );

  TextStyle get captionSemibold14 => TextStyle(
    fontFamily: _family,
    package: _package,
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    height: 20 / 14,
    letterSpacing: 0,
  );

  TextStyle get caption2Regular12 => TextStyle(
    fontFamily: _family,
    package: _package,
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    height: 16 / 12,
    letterSpacing: 0,
  );

  TextStyle get caption2Bold12 => TextStyle(
    fontFamily: _family,
    package: _package,
    fontWeight: FontWeight.w700,
    fontSize: 12.sp,
    height: 20 / 12,
    letterSpacing: 0,
  );

  TextStyle get textMedium15Old => TextStyle(
    fontFamily: _family,
    package: _package,
    fontWeight: FontWeight.w500,
    fontSize: 15.sp,
    height: 20 / 15,
    letterSpacing: 0,
  );
}
