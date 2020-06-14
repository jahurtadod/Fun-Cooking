import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Text(
            "With ❤️ IndevCompany",
            style: Theme.of(context).textTheme.headline6.copyWith(
                  fontSize: 10,
                ),
          )
        ],
      ),
    );
  }
}
