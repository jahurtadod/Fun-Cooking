import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.all(0.0),
            leading: Container(
                height: 60,
                child: ClipOval(
                  child: Image.asset('assets/iconsmall.png'),
                )),
            title: Text(
              "Jorge Hurtado",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline6.copyWith(),
            ),
            subtitle: Container(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "SCORE: 1200",
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                  Icon(
                    FontAwesomeIcons.solidStar,
                    color: Colors.cyan,
                    size: 12,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
