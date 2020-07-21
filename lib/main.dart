import 'package:flutter/material.dart';
import 'package:fun_cooking/User/ui/screens/collection.dart';
import 'package:fun_cooking/User/ui/screens/game.dart';
import 'package:fun_cooking/User/ui/screens/home.dart';
import 'package:fun_cooking/User/ui/screens/info_food.dart';
import 'package:fun_cooking/User/ui/screens/info_recipe.dart';
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
        primaryColor: Color(0xFF0E6097),
        buttonColor: Color(0xFFF58850),
      ),
      initialRoute: '/',
      routes: {
        '/e': (_) => Wrapper(),
        '/': (_) => SingIn(),
        '/home': (_) => Home(),
        '/collection': (_) => Collection(),
        '/game': (_) => GameCombine(),
        '/info_food': (_) => InfoFood(
            name: "Fresas",
            text: "Fragaria, llamado comúnmente fresa o frutilla,"
                " es un género de plantas rastreras estoloníferas de la familia Rosaceae. "
                "Agrupa unos 400 taxones descritos, de los cuales solo unos 20 están aceptados.​ "
                "Son cultivadas por su fruto comestible llamado de la misma manera, fresa o frutilla.",
            img: "fresa",
            color: Color(0xFFFFE3E5),
            colorTop: Colors.pink[300]),
        '/info_recipe': (_) => InfoRecipe(
            name: "Jugo de Fresa",
            ingredientes: "1/2 K. Fresas \n"
                "1/2 Tza. Leche\n",
            text:
                "1. Lavar primero muy bien las fresas, retirarle los tallos y proceder a cortarlas en mitades. \n"
                "2. Colocarlas en la Licuadora, añadir el Agua, la Leche y el Azúcar. \n"
                "3. Servir de inmediato en vaso de vidrio. \n"
                "4. Disfrutar el jugo acompañado de galletas u otro alimento. \n",
            img: "fresa",
            color: Colors.pink[100],
            colorTop: Colors.pink[300]),
      },
    );
  }
}
