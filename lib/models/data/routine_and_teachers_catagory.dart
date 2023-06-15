import 'package:flutter_svg/flutter_svg.dart';

class RoutineTeachersData {
  SvgPicture cataImg;
  String cataTitle;

  RoutineTeachersData({
    required this.cataImg,
    required this.cataTitle,
  });
}

List<RoutineTeachersData> rtData = [
  RoutineTeachersData(
    cataImg: SvgPicture.asset(
      'assets/images/computer.svg',
      height: 100,
    ),
    cataTitle: 'Computer',
  ),
  // RoutineTeachersData(
  //   cataImage: 'assets/images/civil.png',
  //   cataTitle: 'Civil',
  // ),
  // RoutineTeachersData(
  //   cataImage: 'assets/images/et.png',
  //   cataTitle: 'Electrical',
  // ),
  // RoutineTeachersData(
  //   cataImage: 'assets/images/mt.png',
  //   cataTitle: 'Mechanical',
  // ),
  // RoutineTeachersData(
  //   cataImage: 'assets/images/textile.png',
  //   cataTitle: 'Textile',
  // ),
];
