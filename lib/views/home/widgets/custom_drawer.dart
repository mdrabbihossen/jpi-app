import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jpi_app/constants/constants.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  State<CustomDrawer> createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // drawer header
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xff06491B),
                    Color(0xff010D1E),
                  ],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: SvgPicture.asset(
                      'assets/images/jpi_logo.svg',
                      height: 80,
                      width: 80,
                    ),
                  ),
                  Text(
                    'JPI',
                    style: textStyle.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // drawer end
          // drawer body
          _buildDrawerTile(
            drawerLeading: 'assets/images/about-jpi.png',
            drawerTitle: 'About JPI App',
            onTap: () {
              Navigator.pushNamed(context, '/about-jpi');
            },
          ),
          _buildDrawerTile(
            drawerLeading: 'assets/images/about-dev.png',
            drawerTitle: 'About The Developers',
            onTap: () {
              Navigator.pushNamed(context, '/about-dev');
            },
          ),
          _buildDrawerTile(
            drawerLeading: 'assets/images/privacy.png',
            drawerTitle: 'Privacy Policy',
            onTap: () {},
          ),
          _buildDrawerTile(
            drawerLeading: 'assets/images/rate.png',
            drawerTitle: 'Rate Us',
            onTap: () {},
          ),
          _buildDrawerTile(
            drawerLeading: 'assets/images/feedback.png',
            drawerTitle: 'Feedback Us',
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _buildDrawerTile({
    required String drawerLeading,
    required String drawerTitle,
    required VoidCallback onTap,
  }) =>
      ListTile(
        onTap: onTap,
        leading: Image.asset(
          drawerLeading,
          width: 25,
        ),
        title: Text(
          drawerTitle,
          style: textStyle.copyWith(
            color: Color(0xff263238),
            fontWeight: FontWeight.w600,
          ),
        ),
      );
}
