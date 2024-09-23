import 'package:e_wallet_app/core/theme/color_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class FontStyle {
  static TextStyle get hero => GoogleFonts.poppins(
        fontWeight: FontWeight.w500,
        fontSize: 50.sp,
        color: ColorStyle.ink03,
      );
  static TextStyle get heading1 => GoogleFonts.poppins(
        fontSize: 40.sp,
        fontWeight: FontWeight.w600,
        color: ColorStyle.ink03,
      );
  static TextStyle get heading2 => GoogleFonts.poppins(
        fontSize: 32.sp,
        fontWeight: FontWeight.w500,
        color: ColorStyle.ink03,
      );
  static TextStyle get heading3 => GoogleFonts.inter(
        fontSize: 22.sp,
        fontWeight: FontWeight.w600,
        color: ColorStyle.ink03,
      );
  static TextStyle get heading4 => GoogleFonts.urbanist(
        fontSize: 18.sp,
        fontWeight: FontWeight.w700,
        color: ColorStyle.ink03,
      );
  static TextStyle get heading5 => GoogleFonts.poppins(
        fontSize: 16.sp,
        fontWeight: FontWeight.w600,
        color: ColorStyle.ink03,
      );

  static TextStyle get paragraphBold => GoogleFonts.poppins(
        fontWeight: FontWeight.w700,
      );
  static TextStyle get paragraphSemiBold => GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
      );
  static TextStyle get paragraphRegular => GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
      );
  static TextStyle get paragraphMedium => GoogleFonts.poppins(
        fontWeight: FontWeight.w500,
      );
}
