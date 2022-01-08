// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darkTheme = ThemeData.dark().copyWith(
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Color(0xff002DE3), shape: StadiumBorder())),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            primary: Color(0xff002DE3), shape: StadiumBorder())),
    textTheme: TextTheme(
      headline1: GoogleFonts.mulish(
          fontSize: 101, fontWeight: FontWeight.w300, letterSpacing: -1.5),
      headline2: GoogleFonts.mulish(
        fontSize: 63,
        fontWeight: FontWeight.w300,
        letterSpacing: -0.5,
      ),
      headline3: GoogleFonts.mulish(
        fontSize: 50,
        fontWeight: FontWeight.w400,
      ),
      headline4: GoogleFonts.mulish(
        fontSize: 36,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      headline5: GoogleFonts.mulish(
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
      headline6: GoogleFonts.mulish(
        fontSize: 21,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
      ),
      subtitle1: GoogleFonts.mulish(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.15,
      ),
      subtitle2: GoogleFonts.mulish(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
      ),
      bodyText1: GoogleFonts.mulish(
        fontSize: 20,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
      ),
      bodyText2: GoogleFonts.mulish(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
      ),
      button: GoogleFonts.mulish(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.25,
      ),
      caption: GoogleFonts.mulish(
        fontSize: 13,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
      ),
      overline: GoogleFonts.mulish(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
      ),
    ));

ThemeData lightTheme = ThemeData.light().copyWith(

// button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            primary: Color(0xff002DE3), shape: StadiumBorder())),
    textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
            primary: Color(0xff002DE3), shape: StadiumBorder())),

//text theme
    textTheme: TextTheme(
      headline1: GoogleFonts.mulish(
          fontSize: 101,
          fontWeight: FontWeight.w300,
          letterSpacing: -1.5,
          color: Colors.black),
      headline2: GoogleFonts.mulish(
          fontSize: 63,
          fontWeight: FontWeight.w300,
          letterSpacing: -0.5,
          color: Colors.black),
      headline3: GoogleFonts.mulish(
          fontSize: 50, fontWeight: FontWeight.w400, color: Colors.black),
      headline4: GoogleFonts.mulish(
          fontSize: 36,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
          color: Colors.black),
      headline5: GoogleFonts.mulish(
          fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black),
      headline6: GoogleFonts.mulish(
          fontSize: 21,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.15,
          color: Colors.black),
      subtitle1: GoogleFonts.mulish(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.15,
          color: Colors.black),
      subtitle2: GoogleFonts.mulish(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          letterSpacing: 0.1,
          color: Colors.black),
      bodyText1: GoogleFonts.mulish(
          fontSize: 17,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.5,
          color: Colors.black),
      bodyText2: GoogleFonts.mulish(
          fontSize: 15,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.25,
          color: Colors.black),
      button: GoogleFonts.mulish(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          letterSpacing: 1.25,
          color: Colors.black),
      caption: GoogleFonts.mulish(
          fontSize: 13,
          fontWeight: FontWeight.w400,
          letterSpacing: 0.4,
          color: Colors.black),
      overline: GoogleFonts.mulish(
          fontSize: 10,
          fontWeight: FontWeight.w400,
          letterSpacing: 1.5,
          color: Colors.black),
    ));
