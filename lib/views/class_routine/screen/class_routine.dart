import 'package:flutter/material.dart';
import 'package:jpi_app/constants/constants.dart';
import 'package:jpi_app/constants/widgets/categoryTiles.dart';
import 'package:jpi_app/constants/widgets/custom_appbar.dart';

class ClassRoutine extends StatelessWidget {
  static const String routeName = '/class-routine';

  const ClassRoutine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(context: context, appbarTitle: 'Class Routines'),
      backgroundColor: kLightBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: size.height * 0.04),
            CategoryTiles(
              onTap: (){
                Navigator.pushNamed(context, "/book-list");
              }
            ),
          ],
        ),
      ),
    );
  }
}
