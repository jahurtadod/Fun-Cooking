import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 200,
      margin: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.pink[300],
      ),
      child: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: <Widget>[
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 160,
              padding: EdgeInsets.fromLTRB(16, 20, 8, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(8, 0, 8, 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.star,
                          size: 10,
                          color: Colors.white60,
                        )
                      ],
                    ),
                  ),
                  Text(
                    "Fresas",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.headline6.copyWith(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                  ),
                  Text(
                    "5 k",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.subtitle2.copyWith(
                          fontSize: 12,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.only(top: 16),
              child: Hero(
                tag: 'food',
                child: Image.asset('assets/fresa.png'),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/info_food');
            },
            child: Container(
              height: 40,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.pink,
              ),
              child: Icon(
                FontAwesomeIcons.plus,
                color: Colors.white,
                size: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
