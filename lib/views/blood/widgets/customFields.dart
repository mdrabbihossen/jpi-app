import 'package:flutter/material.dart';
import 'package:jpi_app/constants/constants.dart';

class CustomField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final double textFieldHeight;
  final TextInputType? keyboardType;
  final String errorText;
  const CustomField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.textFieldHeight,
    this.keyboardType,
    required this.errorText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: Container(
        width: double.infinity,
        height: textFieldHeight,
        decoration: BoxDecoration(
          color: Color(0xffe8f0f1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          controller: controller,
          keyboardType: keyboardType ?? TextInputType.text,
          cursorHeight: 27,
          validator: (value){
            if(value!.isEmpty){
              return errorText;
            }
            return null;
          },
          style: textStyle.copyWith(
            fontSize: 17,
          ),
          cursorColor: Color(0xff5b777b),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20),
            border: InputBorder.none,
            hintText: hintText,
            errorText: errorText,

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
