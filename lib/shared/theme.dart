import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  ThemeManager._();

  static const Color primaryColor = Color(0xff5C40CC);
  static const Color blackColor = Color(0xff1F1449);
  static const Color whiteColor = Color(0xffFFFFFF);
  static const Color greyColor = Color(0xff9698A9);
  static const Color greenColor = Color(0xff0EC3AE);
  static const Color redColor = Color(0xffEB70A5);
  static const Color backgroundColor = Color(0xffFAFAFA);
  static const Color inactiveColor = Color(0xffDBD7EC);

  static TextStyle blackTextStyle = GoogleFonts.poppins(
    color: blackColor,
  );
  static TextStyle whiteTextStyle = GoogleFonts.poppins(
    color: whiteColor,
  );
  static TextStyle greyTextStyle = GoogleFonts.poppins(
    color: greyColor,
  );
  static TextStyle greenTextStyle = GoogleFonts.poppins(
    color: greenColor,
  );
  static TextStyle redTextStyle = GoogleFonts.poppins(
    color: redColor,
  );
  static TextStyle pupleTextStyle = GoogleFonts.poppins(
    color: primaryColor,
  );

  static FontWeight light = FontWeight.w300;
  static FontWeight reguler = FontWeight.w400;
  static FontWeight medium = FontWeight.w500;
  static FontWeight semiBold = FontWeight.w600;
  static FontWeight bold = FontWeight.w700;
  static FontWeight extraBold = FontWeight.w800;
  static FontWeight black = FontWeight.w900;
}
