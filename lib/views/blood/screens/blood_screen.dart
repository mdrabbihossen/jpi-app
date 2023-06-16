import 'package:flutter/material.dart';
import 'package:jpi_app/constants/widgets/custom_appbar.dart';
import 'package:jpi_app/views/blood/widgets/customFields.dart';

class Blood extends StatefulWidget {
  const Blood({Key? key}) : super(key: key);

  @override
  State<Blood> createState() => _BloodState();
}

class _BloodState extends State<Blood> {
  List<TextEditingController> fullNameController = <TextEditingController>[];
  List<TextEditingController> phoneController = <TextEditingController>[];
  List<TextEditingController> bloodGroupController = <TextEditingController>[];

  List<String> bloodCornerData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fullNameController = [TextEditingController()];
    phoneController = [TextEditingController()];
    bloodGroupController = [TextEditingController()];
  }

  @override
  void dispose() {
    // TODO: implement dispose
    fullNameController.forEach((element) {
      element.dispose();
    });
    phoneController.forEach((element) {
      element.dispose();
    });
    bloodGroupController.forEach((element) {
      element.dispose();
    });
    super.dispose();
  }

   // show the blood corner data
  void showBloodData() {
    setState(() {
      // add the data
      bloodCornerData.add(fullNameController[0].text);
      bloodCornerData.add(phoneController[0].text);
      bloodCornerData.add(bloodGroupController[0].text);
      // clear the Data
      fullNameController[0].clear();
      phoneController[0].clear();
      bloodGroupController[0].clear();
    });
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        appbarTitle: 'Blood Corner',
      ),
      body: SafeArea(
        child: Column(
          children: [
            CustomField(
              textFieldHeight: size.height * 0.08,
              hintText: "Enter Your Full Name",
              controller: fullNameController[0],
            ),
            CustomField(
              textFieldHeight: size.height * 0.08,
              hintText: "Enter Your Phone Number",
              controller: phoneController[0],
            ),
            CustomField(
              textFieldHeight: size.height * 0.08,
              hintText: "Enter Your Blood Group",
              controller: bloodGroupController[0],
            ),
          ],
        ),
      ),
    );
  }
}
