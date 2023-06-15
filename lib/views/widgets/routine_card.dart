import 'package:flutter/material.dart';
import 'package:jpi_app/constants/constants.dart';

Widget RoutineCard({
  required Size size,
  required String routineText,
}) =>
    Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: size.width * 0.02),
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.03,
      ),
      decoration: BoxDecoration(
        color:const Color(0xffffffff),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        routineText,
        style: textStyle.copyWith(
          color: kPrimaryColor,
          fontSize: 14,
          fontWeight: FontWeight.w700,
        ),
        textAlign: TextAlign.center,
      ),
    );
