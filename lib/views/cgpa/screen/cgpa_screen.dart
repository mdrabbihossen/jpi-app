import 'package:flutter/material.dart';
import 'package:jpi_app/constants/constants.dart';
import 'package:jpi_app/constants/widgets/customFields.dart';
import 'package:jpi_app/constants/widgets/custom_appbar.dart';
import 'package:jpi_app/constants/widgets/custom_button.dart';

class CGPA extends StatefulWidget {
  static const routeName = '/cgpa';

  const CGPA({Key? key}) : super(key: key);

  @override
  State<CGPA> createState() => _CGPAState();
}

class _CGPAState extends State<CGPA> {
  final TextEditingController firstSemesterController = TextEditingController();
  final TextEditingController secondSemesterController =
      TextEditingController();
  final TextEditingController thirdSemesterController = TextEditingController();
  final TextEditingController fourthSemesterController =
      TextEditingController();
  final TextEditingController fifthSemesterController = TextEditingController();
  final TextEditingController sixthSemesterController = TextEditingController();
  final TextEditingController seventhSemesterController =
      TextEditingController();
  final TextEditingController eighthSemesterController =
      TextEditingController();

  double totalCgpa = 0.0;
  double cgpa = 0.0;

  void calculateCGPA() {
    setState(() {
      // first semester cgpa calculate 5%
      double firstSemester = double.parse(firstSemesterController.text) * 0.05;
      double secondSemester =
          double.parse(secondSemesterController.text) * 0.05;
      double thirdSemester = double.parse(thirdSemesterController.text) * 0.05;
      double fourthSemester =
          double.parse(fourthSemesterController.text) * 0.10;
      double fifthSemester = double.parse(fifthSemesterController.text) * 0.15;
      double sixthSemester = double.parse(sixthSemesterController.text) * 0.20;
      double seventhSemester =
          double.parse(seventhSemesterController.text) * 0.25;
      double eighthSemester =
          double.parse(eighthSemesterController.text) * 0.15;
      totalCgpa = (firstSemester +
          secondSemester +
          thirdSemester +
          fourthSemester +
          fifthSemester +
          sixthSemester +
          seventhSemester +
          eighthSemester);
      cgpa = double.parse(totalCgpa.toStringAsFixed(2));
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        appbarTitle: "CGPA Calculate",
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Text(
                      'Calculate Your CGPA',
                      style: textStyle.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomField(
                            textFieldHeight: size.height * 0.07,
                            hintText: "1st Semester",
                            controller: firstSemesterController,
                          ),
                        ),
                        Expanded(
                          child: CustomField(
                            textFieldHeight: size.height * 0.07,
                            hintText: "2nd Semester",
                            controller: secondSemesterController,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.02),
                    Row(
                      children: [
                        Expanded(
                          child: CustomField(
                            textFieldHeight: size.height * 0.07,
                            hintText: "3rd Semester",
                            controller: thirdSemesterController,
                          ),
                        ),
                        Expanded(
                          child: CustomField(
                            textFieldHeight: size.height * 0.07,
                            hintText: "4th Semester",
                            controller: fourthSemesterController,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.02),
                    Row(
                      children: [
                        Expanded(
                          child: CustomField(
                            textFieldHeight: size.height * 0.07,
                            hintText: "5th Semester",
                            controller: fifthSemesterController,
                          ),
                        ),
                        Expanded(
                          child: CustomField(
                            textFieldHeight: size.height * 0.07,
                            hintText: "6th Semester",
                            controller: sixthSemesterController,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.02),
                    Row(
                      children: [
                        Expanded(
                          child: CustomField(
                            textFieldHeight: size.height * 0.07,
                            hintText: "7th Semester",
                            controller: seventhSemesterController,
                          ),
                        ),
                        Expanded(
                          child: CustomField(
                            textFieldHeight: size.height * 0.07,
                            hintText: "8th Semester",
                            controller: eighthSemesterController,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: size.height * 0.02),
                    CustomButton(
                      onPressed: () => calculateCGPA(),
                      btnText: "Calculate",
                    ),
                    SizedBox(height: size.height * 0.02),
                    Container(
                      width: double.infinity,
                      height: size.height * 0.07,
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          "Total CGPA: $cgpa",
                          style: textStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
