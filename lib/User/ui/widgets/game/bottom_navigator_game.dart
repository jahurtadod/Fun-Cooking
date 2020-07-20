import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'food_card_small.dart';

class BottomNavigatonGame extends StatelessWidget {
  final Function(List<FoodCardSmall> ingredients)
      clean;
  
  const BottomNavigatonGame({
    this.clean,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF055C97),
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.trashAlt,
            color: Colors.white70,
          ),
          title: Text(
            "Vaciar",
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
          
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.slidersH,
            color: Colors.white70,
          ),
          title: Text(
            "Opciones",
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.bookOpen,
            color: Colors.white70,
          ),
          title: Text(
            "Colección",
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ),
      ],
    );
  }
}
