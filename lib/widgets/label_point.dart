import 'package:flutter/material.dart';

class BulletPoint extends StatelessWidget {
  const BulletPoint({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            child: Container(
              height: 12,
              width: 12,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  border: Border.all(
                      width: 2,
                      color: Colors.pinkAccent,
                      style: BorderStyle.solid)),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: ClipOval(
              child: Container(
                height: 8,
                width: 8,
                color: Colors.pinkAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
