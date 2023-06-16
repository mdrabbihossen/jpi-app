import 'package:flutter/material.dart';
import 'package:jpi_app/constants/constants.dart';

class CustomField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final double textFieldHeight;

  const CustomField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.textFieldHeight,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 10,
      ),
      child: Container(
        width: double.infinity,
        height: textFieldHeight,
        decoration: BoxDecoration(
          color: Color(0xffe8f0f1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextField(
          controller: controller,
          keyboardType: TextInputType.numberWithOptions(),
          cursorHeight: 27,
          style: textStyle.copyWith(
            fontSize: 17,
          ),
          cursorColor: Color(0xff5b777b),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20),
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: textStyle.copyWith(
              fontSize: 15,
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
      ),
    );
  }
}
