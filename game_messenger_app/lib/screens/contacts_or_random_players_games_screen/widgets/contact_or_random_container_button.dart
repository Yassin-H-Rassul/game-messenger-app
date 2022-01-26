import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

contactOrRandContainerButton(String text,String? img){
  return  InkWell(
            onTap: () {
              debugPrint("clicked");
            },
            child: Container(
                width: 286,
                height: 183,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color(0xfff0efef), width: 5),
                    borderRadius: BorderRadius.circular(8),
                    image:  DecorationImage(
                        image: NetworkImage(
                            img!),
                        opacity: 170,
                  
                        fit: BoxFit.cover)),
                child: Center(
                  child: Text(text,
                      style: GoogleFonts.mulish(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.blue)),
                )),
          );
}
