import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavGame extends StatelessWidget {
  const NavGame({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 28, top: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 30,
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color.fromRGBO(255, 255, 255, 0.2)),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 50,
                        child: Center(
                          child: Icon(
                            FontAwesomeIcons.moneyCheckAlt,
                            color: Colors.yellow,
                            size: 16,
                          ),
                        ),
                      ),
                      Text(
                        "250",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 30,
                  width: 100,
                  margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Color.fromRGBO(255, 255, 255, 0.2)),
                  child: Center(
                    child: Text(
                      "Record: 1200",
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          .copyWith(color: Colors.white, fontSize: 13),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(28),
          child: Text(
            "FUN\n COOKING",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(color: Colors.white),
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}
