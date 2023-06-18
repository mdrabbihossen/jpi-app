import 'package:flutter/material.dart';
import 'package:jpi_app/constants/constants.dart';
import 'package:jpi_app/constants/widgets/custom_appbar.dart';
import 'package:jpi_app/constants/widgets/custom_button.dart';
import 'package:jpi_app/controller/blood_preferences.dart';
import 'package:jpi_app/constants/widgets/customFields.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Blood extends StatefulWidget {
  const Blood({Key? key}) : super(key: key);

  @override
  State<Blood> createState() => _BloodState();
}

class _BloodState extends State<Blood> {
  List<TextEditingController> fullNameController = <TextEditingController>[];
  List<TextEditingController> phoneController = <TextEditingController>[];
  List<TextEditingController> bloodGroupController = <TextEditingController>[];

  // form key
  final _formKey = GlobalKey<FormState>();
  List<String> bloodCornerData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fullNameController = [TextEditingController()];
    phoneController = [TextEditingController()];
    bloodGroupController = [TextEditingController()];
    setState(() {
      bloodCornerData.add(BloodPrefences.getFullName() ?? '');

      bloodCornerData.add(BloodPrefences.getPhone() ?? '');
      bloodCornerData.add(BloodPrefences.getBloodGroup() ?? '');
    });
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

  void showBloodData() {
    setState(() {
      bloodCornerData.add(fullNameController[0].text);
      bloodCornerData.add(phoneController[0].text);
      bloodCornerData.add(bloodGroupController[0].text);
      // clear the fields
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
            Form(
              key: _formKey,
              child: Column(
                children: [
                  CustomField(
                    textFieldHeight: size.height * 0.08,
                    hintText: "Enter Your Full Name",
                    controller: fullNameController[0],
                  ),
                  SizedBox(height: size.height * 0.02),
                  CustomField(
                    textFieldHeight: size.height * 0.08,
                    keyboardType: TextInputType.number,
                    hintText: "Enter Your Phone Number",
                    controller: phoneController[0],
                  ),
                  SizedBox(height: size.height * 0.02),
                  CustomField(
                    textFieldHeight: size.height * 0.08,
                    hintText: "Enter Your Blood Group",
                    controller: bloodGroupController[0],
                  ),
                  SizedBox(height: size.height * 0.02),
                  CustomButton(
                    btnText: "Submit",
                    onPressed: () async {
                      showBloodData();
                      // save to shared preferences
                      await BloodPrefences.setFullName(
                          bloodCornerData[bloodCornerData.length - 3]);
                      await BloodPrefences.setPhone(
                          bloodCornerData[bloodCornerData.length - 2]);
                      await BloodPrefences.setBloodGroup(
                        bloodCornerData[bloodCornerData.length - 1],
                      );
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: bloodCornerData.length ~/ 3,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  // invalid value valid value range is empty

                  return ListTile(
                    onLongPress: () {
                      // remove from shared preferences
                    },
                    // leading: CircleAvatar(
                    //   radius: 20,
                    //   backgroundColor: Colors.transparent,
                    //   foregroundColor: Colors.red,
                    //   child: Text(
                    //     bloodCornerData[index * 3][0].isNotEmpty
                    //         ? bloodCornerData[index * 3][0]
                    //         : '',
                    //     style: textStyle.copyWith(
                    //       fontSize: 20,
                    //       color: kPrimaryColor,
                    //       fontWeight: FontWeight.w700,
                    //     ),
                    //   ),
                    // ),
                    title: Text(
                      bloodCornerData[index * 3],
                      style: textStyle.copyWith(
                        fontSize: 20,
                        color: Color(0xff2c3e50),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      bloodCornerData[index * 3 + 1],
                      style: textStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    trailing: Text(
                      bloodCornerData[index * 3 + 2],
                      style: textStyle.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.red,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
