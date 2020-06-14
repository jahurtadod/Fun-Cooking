import 'package:flutter/material.dart';
import 'package:fun_cooking/User/ui/screens/home.dart';
import 'package:fun_cooking/User/ui/screens/sign_in.dart';
import 'package:fun_cooking/wrapper.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = ColorScheme.light(
      primary: Color(0xFF0E6097),
      // primaryVariant: null,
      secondary: Color(0xFFF58850),
      // secondaryVariant: null,
      // surface: null,
      background: Color(0xFFFFFFFF),
      // error: null,
      // onPrimary: null,
      // onSecondary: null,
      // onSurface: null,
      // onBackground: null,
      // onError: null,
      // brightness: null,
    );

    final TextTheme textTheme = TextTheme(
      headline1: GoogleFonts.comfortaa(
        color: Color(0xff0C0A12),
      ),
      headline2: GoogleFonts.comfortaa(
        color: Color(0xff0C0A12),
      ),
      headline3: GoogleFonts.comfortaa(
        color: Color(0xff0C0A12),
      ),
      headline4: GoogleFonts.comfortaa(
        color: Color(0xff0C0A12),
      ),
      headline5: GoogleFonts.comfortaa(
        color: Color(0xff0C0A12),
      ),
      headline6: GoogleFonts.comfortaa(
        color: Color(0xff0C0A12),
      ),
      bodyText1: GoogleFonts.roboto(
        fontSize: 16,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fun Cooking',
      theme: ThemeData(
        colorScheme: colorScheme,
        textTheme: textTheme,
        primarySwatch: Colors.blue,
        buttonColor: Color(0xFFF58850),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/sign_in',
      routes: {
        '/': (_) => Wrapper(),
        '/sign_in': (_) => SingIn(),
        '/home': (_) => Home(),
      },
    );
  }
}
