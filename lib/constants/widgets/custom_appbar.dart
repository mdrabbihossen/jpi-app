import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jpi_app/constants/constants.dart';

AppBar CustomAppBar({
  required BuildContext context,
  required String appbarTitle,
}) =>
    AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      title: Text(
        appbarTitle,
        style: textStyle.copyWith(
          color: kPrimaryColor,
          fontWeight: FontWeight.w700,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/starter');
            },
            tooltip: 'Go to Home',
            icon: Icon(
              FontAwesomeIcons.house,
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
