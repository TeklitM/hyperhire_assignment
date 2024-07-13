import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFF3E3DC5);
const Color scaffoldColor = Color(0xFFEEEEEE);
const Color textColor = Colors.black;
const Color mediumGrayColor = Color(0xFF868686);
const liteGrayColor = Color(0xFFF0F0F0);
const Color lightBlackColor = Color(0xFF1D1D1D);
const Color goldenYellowColor = Color(0xFFFFD233);

fontRegular(double fontSize, {Color? color}) => TextStyle(
      fontFamily: 'NotoSansKR',
      fontSize: fontSize,
      color: color ?? textColor,
      fontWeight: FontWeight.w400,
    );

fontThin(double fontSize, {Color? color}) => TextStyle(
      fontFamily: 'NotoSansKR',
      fontSize: fontSize,
      color: color ?? textColor,
      fontWeight: FontWeight.w100,
    );

fontExtraLight(double fontSize, {Color? color}) => TextStyle(
      fontFamily: 'NotoSansKR',
      fontSize: fontSize,
      color: color ?? textColor,
      fontWeight: FontWeight.w200,
    );

fontLight(double fontSize, {Color? color}) => TextStyle(
      fontFamily: 'NotoSansKR',
      fontSize: fontSize,
      color: color ?? textColor,
      fontWeight: FontWeight.w300,
    );

fontMedium(double fontSize, {Color? color}) => TextStyle(
      fontFamily: 'NotoSansKR',
      fontSize: fontSize,
      color: color ?? textColor,
      fontWeight: FontWeight.w500,
    );

fontSemiBold(double fontSize, {Color? color}) => TextStyle(
      fontFamily: 'NotoSansKR',
      fontSize: fontSize,
      color: color ?? textColor,
      fontWeight: FontWeight.w600,
    );

fontBold(double fontSize, {Color? color}) => TextStyle(
      fontFamily: 'NotoSansKR',
      fontSize: fontSize,
      color: color ?? textColor,
      fontWeight: FontWeight.w700,
    );

fontExtraBold(double fontSize, {Color? color}) => TextStyle(
      fontFamily: 'NotoSansKR',
      fontSize: fontSize,
      color: color ?? textColor,
      fontWeight: FontWeight.w800,
    );

fontExtraBlack(double fontSize, {Color? color}) => TextStyle(
      fontFamily: 'NotoSansKR',
      fontSize: fontSize,
      color: color ?? textColor,
      fontWeight: FontWeight.w900,
    );
