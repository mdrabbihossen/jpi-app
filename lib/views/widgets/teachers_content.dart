import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jpi_app/constants/constants.dart';

Widget TeachersContent({
  required String contentType,
  required String contentTitle,
}) =>
    ListTile(
      visualDensity: VisualDensity(horizontal: 0, vertical: -4),
      leading: Text(
        "$contentType:",
        style: GoogleFonts.mina(
          fontSize: 12,
          color: kPrimaryColor,
        ),
      ),
      title: Text(
        contentTitle,
        style: GoogleFonts.mina(
          fontSize: 12,
          color: kPrimaryColor,
        ),
      ),
    );
