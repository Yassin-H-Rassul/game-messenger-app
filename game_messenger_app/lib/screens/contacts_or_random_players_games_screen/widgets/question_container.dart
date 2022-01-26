import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

questionContainer(){
  return Container(
            width: 268,
            height: 110,
            margin: const EdgeInsets.only(bottom: 33, top: 15),
            child: Text("Do you play with your contacts or random players?",
                style: GoogleFonts.mulish(
                    fontWeight: FontWeight.w600, fontSize: 26)),
          );
}
