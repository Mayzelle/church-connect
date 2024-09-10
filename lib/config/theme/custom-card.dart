import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCard {
  
  static Widget testimoniesCard({
    String? name,
    required int age,
    required String description,
    required String category,
  }) {
    return Container(
      constraints: const BoxConstraints(
        maxHeight: 250,
        minHeight: 50,
        minWidth: double.infinity,
        maxWidth: double.infinity
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
          color: Color.fromARGB(98, 121, 121, 121),
          blurRadius: 1,
          offset: Offset(0, 2),
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                name ?? "Anonymous",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700,
                  fontSize: 19.0,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Age:",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      fontSize: 19.0,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    age.toString(),
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      fontSize: 19.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                description,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.normal,
                  fontSize: 19.0,
                ),
              ),
              const SizedBox(height: 10),
              Chip(
                label: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Category:",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal,
                        fontSize: 19.0,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      category,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.normal,
                        fontSize: 19.0,
                      ),
                    ),
                  ],
                ),
              ),
              // Chip(
              //   label: Text(
              //     category,
              //     style: GoogleFonts.poppins(
              //       fontWeight: FontWeight.normal,
              //       fontSize: 19.0,
              //     ),
              //   ),
              // ),
              const SizedBox(height: 10),
            ],
          ),
        ],
      ),
    );
  }
}
