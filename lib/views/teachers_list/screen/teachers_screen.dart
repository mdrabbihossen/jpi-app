import 'package:flutter/material.dart';

import 'package:jpi_app/constants/widgets/categoryTiles.dart';
import 'package:jpi_app/constants/widgets/custom_appbar.dart';
import 'package:jpi_app/views/teachers_list/widgets/teachers_tile.dart';

class TeachersScreen extends StatelessWidget {
  static const String routeName = '/teacher-screen';

  const TeachersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context: context, appbarTitle: 'Teacher\'s List'),
      body: SafeArea(
        child: Column(
          children: [
            TeachersTile(),
            SizedBox(height: 20),
            // CategoryTiles(),
          ],
        ),
      ),
    );
  }
}
