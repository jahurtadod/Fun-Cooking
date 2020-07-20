import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigatonGame extends StatelessWidget {
  const BottomNavigatonGame({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      items: [
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.shoppingCart),
          title: Text("Comprar"),
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.bookOpen),
          title: Text("Colección"),
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.slidersH),
          title: Text("Opciones"),
        ),
      ],
    );
  }
}
