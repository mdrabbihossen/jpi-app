import 'package:flutter/material.dart';

import 'package:jpi_app/constants/widgets/custom_appbar.dart';
import 'package:jpi_app/constants/widgets/information.dart';
import 'package:jpi_app/views/class_routine/widgets/routineTiles.dart';

class SelectSemester extends StatelessWidget {
  static const String routeName = '/select-semester';

  const SelectSemester({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        appbarTitle: 'Select Semester',
      ),
      body: Column(
        children: [
          RoutineTile(
            size: size,
            titleOne: '1st Semester',
            titleTwo: '2nd Semester',
          ),
          RoutineTile(
            size: size,
            titleOne: '3rd Semester',
            titleTwo: '4th Semester',
          ),
          RoutineTile(
            size: size,
            titleOne: '5th Semester',
            titleTwo: '6th Semester',
          ),
          RoutineTile(
            size: size,
            titleOne: '7th Semester',
            titleTwo: '8th Semester',
          ),
          SizedBox(height: 25),
          Information(context),
        ],
      ),
    );
  }
}
