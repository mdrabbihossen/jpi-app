import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jpi_app/constants/widgets/custom_appbar.dart';
import 'package:jpi_app/views/about/widgets/dev_card.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutDev extends StatelessWidget {
  static const routeName = '/about-dev';

  const AboutDev({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        context: context,
        appbarTitle: "About Developers",
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              DevCard(
                devImg: 'assets/images/rabby.png',
                devName: 'MD Rabbi Hossen',
                devPosition: 'Flutter Developer',
                iconFb: true,
                iconGithub: true,
                iconLinkedin: true,
                onFb: () {
                  _launchURL(
                    url: 'https://www.facebook.com/fazleybinmahbub26/',
                  );
                },
                onGithub: () {
                  _launchURL(
                    url: 'https://github.com/mdrabbihossen/',
                  );
                },
                onLinkedin: () {
                  _launchURL(
                    url: 'https://www.linkedin.com/in/mdrabbihossen/',
                  );
                },
              ),
              SizedBox(height: 10),
              DevCard(
                devImg: 'assets/images/praya.png',
                devName: 'Prayangshu Biswas Hritwick',
                devPosition: 'Flutter Developer',
                iconFb: true,
                iconGithub: true,
                iconLinkedin: true,
                onFb: () {
                  _launchURL(
                    url: 'https://facebook.com/prayangshubh',
                  );
                },
                onGithub: () {
                  _launchURL(
                    url: 'https://github.com/prayangshubh/',
                  );
                },
                onLinkedin: () {
                  _launchURL(
                    url: 'https://bd.linkedin.com/in/prayangshubh/',
                  );
                },
              ),
              const SizedBox(height: 20),
              Text(
                'Special Thanks To.....',
                style: GoogleFonts.poppins(
                  color: const Color(0xff50b870),
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1,
                endIndent: 20,
                indent: 20,
              ),
              const SizedBox(height: 10),
              DevCard(
                devImg: "assets/images/biplob.png",
                devName: "Biplob Hasan Khan",
                devPosition: "Data Collector",
                iconFb: true,
                iconGithub: true,
                iconLinkedin: true,
                onFb: () {
                  _launchURL(
                    url: 'https://facebook.com/broken.biplob69/',
                  );
                },
                onGithub: () {
                  _launchURL(
                    url: 'https://github.com/biplobkhan69/',
                  );
                },
                onLinkedin: () {
                  _launchURL(
                    url: 'https://www.linkedin.com/in/biplob-khan-213341278/',
                  );
                },
              ),
              const SizedBox(height: 10),
              DevCard(
                devImg: "assets/images/faruq.png",
                devName: "Md. Faruq Hossain",
                devPosition: "Mentor",
                iconFb: true,
                iconGithub: false,
                iconLinkedin: false,
                onFb: () {
                  _launchURL(
                    url: 'https://www.facebook.com/faruqhosain?mibextid=LQQJ4d',
                  );
                },
              ),
              const SizedBox(height: 10),
              DevCard(
                devImg: "assets/images/saidur.png",
                devName: "Engr. Md. Saidur Rahman",
                devPosition: "Mentor",
                iconGithub: false,
                iconFb: true,
                iconLinkedin: false,
                onFb: () {
                  _launchURL(
                    url:
                        'https://www.facebook.com/saidur.rahman.5621149?mibextid=LQQJ4d',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  // launch url
  Future<void> _launchURL({required String url}) async {
    !await canLaunchUrl(Uri.parse(url))
        ? await launchUrl(Uri.parse(url))
        : throw 'Could not launch $url';
  }
}
