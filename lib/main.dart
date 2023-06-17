import 'package:flutter/material.dart';
import 'package:jpi_app/constants/constants.dart';
import 'package:jpi_app/controller/blood_preferences.dart';
import 'package:jpi_app/routes.dart';
import 'package:jpi_app/views/splash/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await BloodPrefences.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: kLightBackgroundColor,
      ),
      // themeMode: ThemeMode.system,
      // theme: Themes.lightTheme,
      // darkTheme: Themes.darkTheme,
      onGenerateRoute: (settings) => generateRoute(settings),
    );
  }
}
