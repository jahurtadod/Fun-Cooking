import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fun_cooking/widgets/label_point.dart';

class LabelCollection extends StatelessWidget {
  final String name;
  final Color color;

  const LabelCollection({this.name, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              BulletPoint(
                color: this.color,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                this.name,
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text("Más Información",
                  style: Theme.of(context).textTheme.caption),
              SizedBox(
                width: 5,
              ),
              Icon(
                FontAwesomeIcons.chevronRight,
                size: 14,
              )
            ],
          ),
        ],
      ),
    );
  }
}
