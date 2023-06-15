import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DevCard extends StatelessWidget {
  final String devImg;
  final String devName;
  final String devPosition;
  final bool iconGithub;
  final bool iconFb;
  final bool iconLinkedin;
  final VoidCallback? onFb;
  final VoidCallback? onGithub;
  final VoidCallback? onLinkedin;

  const DevCard({
    Key? key,
    required this.devImg,
    required this.devName,
    required this.devPosition,
    required this.iconGithub,
    required this.iconFb,
    required this.iconLinkedin,
    this.onFb,
    this.onGithub,
    this.onLinkedin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 1),
            ),
          ]),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(devImg),
          ),
          const SizedBox(height: 10),
          Align(
            alignment: Alignment.center,
            child: Text(
              devName,
              style: GoogleFonts.poppins(
                color: const Color(0xff50b870),
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            devPosition,
            style: GoogleFonts.poppins(
              color: const Color(0xff717171),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: onFb,
                icon: Icon(
                  iconFb ? FontAwesomeIcons.facebook : null,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: onLinkedin,
                icon: Icon(
                  iconLinkedin ? FontAwesomeIcons.linkedin : null,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: onGithub,
                icon: Icon(
                  iconGithub ? FontAwesomeIcons.github : null,
                  color: Colors.grey,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
