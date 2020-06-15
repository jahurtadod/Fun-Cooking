import 'package:flutter/material.dart';
import 'package:fun_cooking/widgets/label_point.dart';

class LabelCollection extends StatelessWidget {
  const LabelCollection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              BulletPoint(),
              SizedBox(
                width: 8,
              ),
              Text(
                "Frutas",
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
          Text("Más Información", style: Theme.of(context).textTheme.caption),
        ],
      ),
    );
  }
}
