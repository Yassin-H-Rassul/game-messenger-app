import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

theMightyOr(){
  return  Container(
            margin: const EdgeInsets.fromLTRB(0, 33, 0, 33),
            child: Center(
              child: Text("Or",
                  style: GoogleFonts.mulish(
                      fontWeight: FontWeight.w600, fontSize: 26)),
            ),
          );
}