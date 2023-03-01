// ignore_for_file: non_constant_identifier_names

// text with bold
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/* ================================================================ */

Text text_with_bold_style(str, Color text_color, text_size) {
  return Text(
    str.toString(),
    style: GoogleFonts.montserrat(
      fontSize: text_size,
      fontWeight: FontWeight.bold,
      color: text_color,
    ),
  );
}

Text text_with_regular_style(str, Color text_color, text_size) {
  return Text(
    str.toString(),
    style: GoogleFonts.montserrat(
      fontSize: text_size,
      color: text_color,
    ),
  );
}

/* ================================================================ */