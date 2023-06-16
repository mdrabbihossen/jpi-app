import 'package:flutter/material.dart';
import 'package:jpi_app/views/blood/screens/blood_screen.dart';
import 'package:jpi_app/views/class_routine/screen/class_routine.dart';
import 'package:jpi_app/views/home/screen/home_screen.dart';
import 'package:jpi_app/views/starter/widgets/bottom_navbar.dart';

class Starter extends StatefulWidget {
  static const String routeName = '/starter';

  const Starter({Key? key}) : super(key: key);

  @override
  State<Starter> createState() => _StarterState();
}

class _StarterState extends State<Starter> {
  int currentIndex = 0;
  List<Widget> pages = [
    HomeScreen(),
    Center(
      child: Image.asset('assets/images/coming-soon.gif'),
    ),
    ClassRoutine(),
    Blood(),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: pages[currentIndex],
      ),
      bottomNavigationBar: BottomBar(
        size: size,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
