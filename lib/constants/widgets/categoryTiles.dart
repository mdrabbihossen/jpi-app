import 'package:flutter/material.dart';
import 'package:jpi_app/constants/constants.dart';
import 'package:jpi_app/models/data/routine_and_teachers_catagory.dart';

Widget CategoryTiles({VoidCallback? onTap}) => Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          itemCount: rtData.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            final routineTeData = rtData[index];
            return Container(
              decoration: BoxDecoration(
                color: const Color(0xfffefffe),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    routineTeData.cataImg,
                    Text(
                      routineTeData.cataTitle,
                      style: textStyle.copyWith(
                        color: kPrimaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
