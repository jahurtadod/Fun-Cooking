import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50)),
        color: Color.fromRGBO(14, 96, 151, 1),
        //color: Color(0xFF3598DB),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Buscar alimentos",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: Colors.white,fontSize: 12),
          ),
          Icon(
            FontAwesomeIcons.search,
            color: Colors.white,
            size: 18,
          ),
        ],
      ),
    );
  }
}
