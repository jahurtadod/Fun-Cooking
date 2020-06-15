import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class GameCombine extends StatefulWidget {
  @override
  _GameCombineState createState() => _GameCombineState();
}

class _GameCombineState extends State<GameCombine> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text(
            "Combina y crea",
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 28),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Cartas seleccionadas"),
                  Container(
                    width: 32,
                    child: Icon(
                      FontAwesomeIcons.backspace,
                      size: 20,
                    ),
                  )
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Tu colección"),
                  Icon(
                    FontAwesomeIcons.filter,
                    size: 20,
                  )
                ],
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
