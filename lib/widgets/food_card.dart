import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fun_cooking/User/ui/screens/info_food.dart';

class FoodCard extends StatelessWidget {
  final String name;
  final String text;
  final String description;
  final String img;
  final Color color;
  final Color colorsecundary;


  const FoodCard({
    @required this.name,
    @required this.text,
    @required this.description,
    @required this.img,
    this.color,
    this.colorsecundary,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: this.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 160,
        height: 200,
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 160,
                padding: EdgeInsets.fromLTRB(18, 20, 8, 16),
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
                          )
                        ],
                      ),
                    ),
                    Text(
                      this.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            fontSize: 14,
                          ),
                    ),
                    Text(
                      this.text,
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
            Center(
              child: Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.only(top: 16),
                child: Hero(
                  tag: this.name,
                  child: Image.asset('assets/${this.img}.png'),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => InfoFood(
                        name: this.name,
                        text: this.description,
                        img: this.img,
                        color: this.color,
                        colorTop: this.color),
                  ),
                );
              },
              child: Container(
                height: 40,
                width: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  color: this.colorsecundary,
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
      ),
    );
  }
}
