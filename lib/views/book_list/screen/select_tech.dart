import 'package:flutter/material.dart';
import 'package:jpi_app/constants/widgets/categoryTiles.dart';
import 'package:jpi_app/constants/widgets/custom_appbar.dart';

class SelectTechnology extends StatelessWidget {
  static const String routeName = '/select-tech';

  const SelectTechnology({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context: context, appbarTitle: 'Select Technology'),
      body: SafeArea(
        child: Column(
          children: [
            CategoryTiles(
              onTap: () {
                Navigator.pushNamed(context, '/book-list');
              },
            ),
          ],
        ),
      ),
    );
  }
}
