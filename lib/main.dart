import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Andreas Herzinger',
      localizationsDelegates: [
        AppLocalizations.delegate,
      ],
      theme: ThemeData(
  brightness: Brightness.dark,
  primaryColor: Color(0xFF0D6F73), // fresh turquoise-teal
  scaffoldBackgroundColor: Color(0xFF06363D), // deep dark teal
  cardColor: Color(0xFF085558), // mid teal
  hintColor: Color(0xFF84BABF), // soft aqua
  focusColor: Color(0xFF0D6F73), // turquoise focus
  hoverColor: Color(0xFF0D6F73).withOpacity(0.8),
  shadowColor: Color(0xFF84BABF).withOpacity(0.4),

  textTheme: TextTheme(
    headline1: GoogleFonts.zenDots(
      fontSize: 200,
      color: Color(0xFF84BABF), // strong turquoise
      fontWeight: FontWeight.w600,
    ),
    headline2: GoogleFonts.zenDots(
      fontSize: 25,
      color: Color(0xFF84BABF),//Color(0xFFE0EDE9).withOpacity(0.9), // soft white-aqua
      fontWeight: FontWeight.w400,
    ),
    subtitle1: GoogleFonts.zenDots(
      fontSize: 22,
      fontStyle: FontStyle.normal,
      color: Colors.white,//Color(0xFF84BABF), // muted aqua
    ),
    subtitle2: GoogleFonts.zenDots(
      fontSize: 50,
      color: Color(0xFF84BABF), // turquoise
      fontWeight: FontWeight.w600,
    ),
    bodyText1: GoogleFonts.workSans(
      fontSize: 18,
      color: Colors.white,//Color(0xFFE0EDE9).withOpacity(0.95), // light aqua-white
      height: 1.6,
    ),
    bodyText2: GoogleFonts.workSans(
      fontSize: 18,
      color: Colors.white,//Color(0xFF84BABF), // aqua accent text
      height: 1.6,
    ),
    overline: GoogleFonts.zenDots(
      fontSize: 28,
      color: Colors.white,//Color(0xFF84BABF), // turquoise emphasis
      fontWeight: FontWeight.w600,
    ),
    caption: GoogleFonts.zenDots(
      fontSize: 28,
      color: Color(0xFF085558), // mid teal for subtle detail
    ),
  ),
),
      home: HomeScreen(),
    );
  }
}
