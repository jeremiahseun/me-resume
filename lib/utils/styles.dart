import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppStyles {
  static TextStyle titleText(double size) => GoogleFonts.playfairDisplay(
        fontSize: size.sp,
        fontWeight: FontWeight.w900,
        color: const Color(0xff011f21),
      );
  static TextStyle normalText({double? size}) => GoogleFonts.ptSansNarrow(
        fontSize: size ?? 14.sp,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      );
  static TextStyle subText(double size) => GoogleFonts.playfairDisplay(
        fontSize: size.sp,
        fontWeight: FontWeight.w600,
        color: const Color(0xff011f21),
      );
}

class AppColors {
  static Color subText = const Color(0xff9E8C6C);
  static Color black = const Color(0xff011f21);
}
