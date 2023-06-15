import 'package:flutter/material.dart';
import 'package:jpi_app/views/widgets/teachers_content.dart';

Widget TeachersTile() => Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20),
      // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CircleAvatar(
              radius: 50,
            ),
          ),
          TeachersContent(
            contentType: 'নাম',
            contentTitle: 'প্রকৌ: জি. এম. আজিজুর রহমান',
          ),
          TeachersContent(
            contentType: 'মোবাইল',
            contentTitle: '+880 1711 940 279',
          ),
          TeachersContent(
            contentType: 'ফোন (অফিস)',
            contentTitle: '+88 0421 68536',
          ),
        ],
      ),
    );
