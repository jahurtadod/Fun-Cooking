import 'package:flutter/material.dart';

class FoodCardSmall extends StatelessWidget {
  final String nameImg;
  final Color color;

  const FoodCardSmall({
    Key key,
    @required this.nameImg,
    @required  this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: this.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 60,
        height: 60,
        child: Center(
          child: Container(
            height: 40,
            width: 40,
            child: Image.asset('assets/${this.nameImg}.png'),
          ),
        ),
      ),
    );
  }
}
