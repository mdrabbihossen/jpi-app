import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jpi_app/constants/constants.dart';
import 'package:google_fonts/google_fonts.dart';

Widget Information(BuildContext context) => Column(
      children: [
        Text(
          'যে কোন প্রয়োজনে ডিপার্টমেন্ট হেড এর সাথে অথবা সংশ্লিষ্ট শিক্ষকের সাথে যোগাযোগ করুন ।',
          textAlign: TextAlign.center,
          style: GoogleFonts.hindSiliguri(
            fontSize: 16,
            color: kPrimaryColor,
          ),
        ),
        SizedBox(height: 20),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'শিক্ষদের তথ্য পেতে',
                style: GoogleFonts.hindSiliguri(
                  fontSize: 15,
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'এখানে ক্লিক করুন',
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, '/teacher-screen');
                  },
                style: GoogleFonts.hindSiliguri(
                  fontSize: 13,
                  decoration: TextDecoration.underline,
                  color: kPrimaryColor,
                ),
              ),
            ],
          ),
        ),
      ],
    );
