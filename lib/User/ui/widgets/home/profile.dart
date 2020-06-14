import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              height: 50,
              child: Image.asset('assets/avatar.png'),
            ),
          ),
          Opacity(
            opacity: 0.05,
            child: Container(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                "FUN COOKING",
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.end,
              ),
            ),
          ),
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(22, 24, 16, 16),
            leading: ClipOval(
              child: Container(
                color: Theme.of(context).colorScheme.primary,
                height: 50,
                width: 50,
                child: Image.asset('assets/iconsmall.png'),
              ),
            ),
            title: Text(
              "Jorge Hurtado",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.headline6.copyWith(),
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 4),
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
