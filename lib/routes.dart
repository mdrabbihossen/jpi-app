import 'package:flutter/material.dart';
import 'package:jpi_app/views/about/screens/about-dev.dart';
import 'package:jpi_app/views/about/screens/about_jpi.dart';
import 'package:jpi_app/views/book_list/screen/book_list_screen.dart';
import 'package:jpi_app/views/book_list/screen/select_tech.dart';
import 'package:jpi_app/views/class_routine/screen/class_routine.dart';
import 'package:jpi_app/views/class_routine/screen/select_semester.dart';
import 'package:jpi_app/views/home/screen/home_screen.dart';

import 'package:jpi_app/views/starter/screen/starter.dart';
import 'package:jpi_app/views/teachers_list/screen/teachers_screen.dart';

import 'package:page_transition/page_transition.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case Starter.routeName:
      return PageTransition(
        child: const Starter(),
        type: PageTransitionType.leftToRight,
        settings: routeSettings,
        duration: const Duration(milliseconds: 400),
      );
    case HomeScreen.routeName:
      return PageTransition(
        child: const HomeScreen(),
        type: PageTransitionType.fade,
        settings: routeSettings,
        duration: const Duration(milliseconds: 400),
      );
    case ClassRoutine.routeName:
      return PageTransition(
        child: const ClassRoutine(),
        type: PageTransitionType.bottomToTop,
        settings: routeSettings,
        duration: const Duration(milliseconds: 400),
      );
    case TeachersScreen.routeName:
      return PageTransition(
        child: const TeachersScreen(),
        type: PageTransitionType.leftToRight,
        settings: routeSettings,
        duration: const Duration(milliseconds: 400),
      );
    case SelectSemester.routeName:
      return PageTransition(
        child: const SelectSemester(),
        type: PageTransitionType.leftToRight,
        settings: routeSettings,
        duration: const Duration(milliseconds: 400),
      );
    case SelectTechnology.routeName:
      return PageTransition(
        child: const SelectTechnology(),
        type: PageTransitionType.rightToLeft,
        settings: routeSettings,
        duration: const Duration(milliseconds: 400),
      );

    case AboutJPI.routeName:
      return PageTransition(
        child: const AboutJPI(),
        type: PageTransitionType.bottomToTop,
        settings: routeSettings,
        duration: const Duration(milliseconds: 400),
      );
    case BookList.routeName:
      return PageTransition(
        child: const BookList(),
        type: PageTransitionType.rightToLeft,
        settings: routeSettings,
        duration: const Duration(milliseconds: 400),
      );
    case AboutDev.routeName:
      return PageTransition(
        child: const AboutDev(),
        type: PageTransitionType.bottomToTop,
        settings: routeSettings,
        duration: const Duration(milliseconds: 400),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Center(
              child: Image.asset('assets/images/coming-soon.gif'),
            ),
          ),
        ),
      );
  }
}
