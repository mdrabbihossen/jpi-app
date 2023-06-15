import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jpi_app/constants/constants.dart';
import 'package:jpi_app/constants/widgets/custom_appbar.dart';
import 'package:jpi_app/views/about/widgets/about_text.dart';
import 'package:jpi_app/views/about/widgets/features_describe.dart';

class AboutJPI extends StatelessWidget {
  static const routeName = '/about-jpi';

  const AboutJPI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context: context, appbarTitle: 'About JPI APP'),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 17.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: SvgPicture.asset(
                      "assets/images/jpi_logo.svg",
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                AboutContent(
                  aboutText: 'What is JPI?',
                  aboutDesc: 'JPI stands for Jessore Polytechnic Institute. ',
                ),
                SizedBox(height: 20),
                AboutContent(
                  aboutText: 'About this app..',
                  aboutDesc:
                      'The JPI app is a user-friendly mobile platform for Jessore Polytechnic Institute. It provides convenient access to campus resources, including class schedules, academic materials, and important announcements. Features like a digital library, online assignment submission, and faculty directory enhance the learning experience and streamline communication within the JPI community.',
                ),
                SizedBox(height: 20),
                AboutContent(
                    aboutText: 'What is the technology used in this app?',
                    aboutDesc:
                        'This app is developed using Flutter. It is a cross platform app. It can be run on both Android and iOs devices.'),
                SizedBox(height: 20),
                Text(
                  'Features In JPI App',
                  style: textStyle.copyWith(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 14),
                features(featureTitle: 'Booklist'),
                SizedBox(height: 5),
                features(featureTitle: 'CGPA Calculate'),
                SizedBox(height: 5),
                features(featureTitle: 'Teacher\'s Information'),
                SizedBox(height: 5),
                features(featureTitle: 'Location'),
                SizedBox(height: 19),
                FeaturesDescribe(
                  featureTitle: 'Booklist',
                  featureDesc:
                      '- You can get your booklist from this app with probidhan.',
                ),
                SizedBox(height: 15),
                FeaturesDescribe(
                  featureTitle: 'CGPA Calculate',
                  featureDesc: '- You can calculate your CGPA from this app.',
                ),
                SizedBox(height: 15),
                FeaturesDescribe(
                  featureTitle: 'Teacher\'s Information',
                  featureDesc:
                      '- You can get your teacher\'s information from this app with your own technology.',
                ),
                SizedBox(height: 15),
                FeaturesDescribe(
                  featureTitle: 'Location',
                  featureDesc:
                      '- You can get your institute\'s location from this app.',
                ),
                SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget features({required String featureTitle}) => Padding(
        padding: EdgeInsets.only(left: 15.0),
        child: Row(
          children: [
            // a dotted container
            Container(
              height: 8,
              width: 8,
              decoration: BoxDecoration(
                color: Color(0xff263238),
                shape: BoxShape.circle,
              ),
            ),
            SizedBox(width: 15),
            Text(
              featureTitle,
              style: textStyle.copyWith(
                color: kSecondaryColor,
                fontWeight: FontWeight.w700,
                fontSize: 13,
              ),
            ),
          ],
        ),
      );
}
