import 'package:flutter/material.dart';

class FoodCardMedium extends StatelessWidget {
  const FoodCardMedium({
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
        width: 150,
        height: 100,
        child: Stack(
          alignment: AlignmentDirectional.centerEnd,
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 150,
                padding: EdgeInsets.fromLTRB(16, 20, 8, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Fresas",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            fontSize: 14,
                          ),
                    ),
                    Text(
                      "5 kcal",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.subtitle2.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 60,
              width: 60,
              margin: EdgeInsets.only(right: 8),
              child: Image.asset('assets/fresa.png'),
            ),
          ],
        ),
      ),
    );
  }
}
