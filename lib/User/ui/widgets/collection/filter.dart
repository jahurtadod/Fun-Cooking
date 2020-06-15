import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Filter extends StatelessWidget {
  const Filter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 24),
      child: Row(
        children: <Widget>[
          Container(
            height: 20,
            width: 20,
            margin: EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
            ),
            child: Icon(
              FontAwesomeIcons.filter,
              color: Colors.white,
              size: 10,
            ),
          ),
          Text("Categorías"),
        ],
      ),
    );
  }
}
