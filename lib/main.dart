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
      localizationsDelegates: [AppLocalizations.delegate,],
      theme: ThemeData(
        primarySwatch: Colors.blue,
        hoverColor: Color(0xff06133f),
        hintColor: Color(0xff071852),
        focusColor: Color(0xfff76c6c),
        shadowColor: Color(0xffa8d0e6),
        cardColor: Color(0xff050035),
        textTheme: TextTheme(
            headline1: GoogleFonts.zenDots(fontSize: 200, color: Color(0xfff76c6c), fontWeight: FontWeight.w600),//#TextStyle(fontSize: 200, color: Color(0xfff76c6c), fontFamily: 'Dosis', fontWeight: FontWeight.w600),
            headline2: GoogleFonts.zenDots(
                fontSize: 25, color: Color.fromRGBO(236, 240, 241, 0.75), fontWeight: FontWeight.w400),
            subtitle1: GoogleFonts.zenDots(
                fontSize: 22,
                fontStyle: FontStyle.normal,
                color: Color(0xffd0d3d4)),
            subtitle2: GoogleFonts.zenDots(
              fontSize: 50,
              color: Color(0xfff76c6c),
              fontWeight: FontWeight.w600
            ),
            bodyText1: GoogleFonts.zenDots(
                fontSize: 18,
                color: Color.fromRGBO(236, 240, 241, 0.9),
                height: 1.6,
                ),
            bodyText2:
                GoogleFonts.zenDots(fontSize: 18, color: Color(0xfff76c6c), height: 1.6),
            overline: GoogleFonts.zenDots(fontSize: 28, color: Color(0xfff76c6c), fontWeight: FontWeight.w600),
            caption: GoogleFonts.zenDots(fontSize: 28, color: Color(0xfff76c6c)))),
      home: HomeScreen(),
    );
  }
}
