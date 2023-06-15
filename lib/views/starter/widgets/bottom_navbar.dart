import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jpi_app/constants/constants.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

Widget BottomBar({
  required Size size,
  required int currentIndex,
  required Function(int) onTap,
}) =>
    Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: size.width*0.05,
          vertical: 10,
        ),
        child: GNav(
          gap: 15,
          selectedIndex: currentIndex,
          activeColor: kPrimaryColor,
          color: Color(0xff8b8b8b),
          onTabChange: onTap,
          padding: EdgeInsets.symmetric(horizontal:size.width*0.01,vertical: size.height*0.01),
          tabs: [
            GButton(
              icon: FontAwesomeIcons.house,
              text: 'Home',
            ),
            GButton(
              icon: FontAwesomeIcons.bell,
              text: 'Notice',
            ),
            GButton(
              icon: FontAwesomeIcons.calendarDays,
              text: 'Class Routine',
            ),
            GButton(
              icon: FontAwesomeIcons.droplet,
              text: 'Blood Corner',
            ),
          ],
        ),
      ),
    );
