import 'package:flutter/material.dart';
import 'package:jpi_app/constants/constants.dart';

Widget AboutContent({required String aboutText,required String aboutDesc,TextStyle? style,})=>Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text(
     aboutText,
      style: textStyle.copyWith(
        color: kPrimaryColor,
        fontWeight: FontWeight.w600,
        fontSize: 15,
      ),
    ),
    SizedBox(height: 12),
    Text(
      aboutDesc,
      style: textStyle.copyWith(
        color: kSecondaryColor,
        fontSize: 13,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.6,
        height: 1.5,
      ),
    ),
  ],
);