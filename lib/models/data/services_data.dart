import 'package:flutter_svg/flutter_svg.dart';

class ServicesData {
  final SvgPicture serviceImg;
  String serviceTitle;
  String routeName;

  ServicesData({
    required this.serviceImg,
    required this.serviceTitle,
    required this.routeName,
  });
}

List<ServicesData> services = [
  ServicesData(
    serviceImg: SvgPicture.asset(
      'assets/images/teachers.svg',
      height: 90,
    ),
    serviceTitle: 'Teacher\'s List',
    routeName: '/teacher-screen',
  ),
  ServicesData(
    serviceImg: SvgPicture.asset(
      'assets/images/booklist.svg',
      height: 90,
    ),
    serviceTitle: 'Booklist',
    routeName: '/select-tech',
  ),
  ServicesData(
    serviceImg: SvgPicture.asset(
      'assets/images/calculator.svg',
      height: 90,
    ),
    serviceTitle: 'CGPA Calculate',
    routeName: '/cgpa',
  ),
  ServicesData(
    serviceImg: SvgPicture.asset(
      'assets/images/location.svg',
      height: 90,
    ),
    serviceTitle: 'Location',
    routeName: '/location',
  ),
];
