import 'package:flutter/material.dart';
import 'package:jpi_app/views/widgets/routine_card.dart';

Widget RoutineTile({
  required Size size,
  required String titleOne,
  required String titleTwo,
}) =>
    Row(
      children: [
        Expanded(
          child: RoutineCard(
            size: size,
            routineText: titleOne,
          ),
        ),
        Expanded(
          child: RoutineCard(
            size: size,
            routineText: titleTwo,
          ),
        ),
      ],
    );
