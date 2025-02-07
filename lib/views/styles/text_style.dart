import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yohire/utils/constants/colors.dart';

TextStyle customTextStyle({
  required double fontSize,
  Color? color,
  required fontWeight,
  double? lineHeight,

}) {
  return GoogleFonts.roboto(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    height: lineHeight,
    
  );
}

const TextStyle kButtonTextStyle = TextStyle(
  fontSize: 16,
  color: kWhite,
);