import 'package:flutter/material.dart';
import 'package:jpi_app/constants/constants.dart';

Widget FeaturesDescribe({
  required String featureTitle,
  required String featureDesc,
}) =>
    Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          featureTitle,
          style: textStyle.copyWith(
            color: kSecondaryColor,
            fontSize: 15,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.5,
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            featureDesc,
            style: textStyle.copyWith(
              color: kSecondaryColor,
              fontSize: 13,
              fontWeight: FontWeight.w500,
              letterSpacing: 0.5,
            ),
          ),
        ),
      ],
    );
