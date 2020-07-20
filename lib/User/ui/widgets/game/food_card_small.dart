import 'package:flutter/material.dart';

class FoodCardSmall extends StatelessWidget {
  const FoodCardSmall({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xFFFFE3E5),
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
            child: Image.asset('assets/fresa.png'),
          ),
        ),
      ),
    );
  }
}
