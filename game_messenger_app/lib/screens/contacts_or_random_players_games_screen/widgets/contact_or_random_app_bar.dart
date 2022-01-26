import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

appBar(){
  return AppBar(
        title: Text("Online Games",
            style: GoogleFonts.mulish(
                fontWeight: FontWeight.w600,
                fontSize: 18,
                color: Colors.black)),
        elevation: 0.0,
        backgroundColor: Colors.white,
      );
}