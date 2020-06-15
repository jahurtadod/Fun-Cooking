import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoFood extends StatefulWidget {
  @override
  _InfoFoodState createState() => _InfoFoodState();
}

class _InfoFoodState extends State<InfoFood> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          color: Colors.pink,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(16),
                  width: 150,
                  height: 150,
                  child: Hero(
                    tag: 'food',
                    child: Image.asset('assets/fresa.png'),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                    color: Colors.white,
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 28),
                    child: Column(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(bottom: 16),
                          width: 80,
                          height: 5,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Fresas"),
                            Row(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(FontAwesomeIcons.video, size: 14,),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("Videos"),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(FontAwesomeIcons.solidHeart, size: 14,),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("Favoritos"),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Text("Descripción"),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                            "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed o…"),
                        SizedBox(
                          height: 20,
                        ),
                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: <Widget>[
                            PropertyFood(),
                            PropertyFood(),
                            PropertyFood(),
                            PropertyFood(),
                            PropertyFood(),
                            PropertyFood(),
                            PropertyFood(),
                            PropertyFood(),
                            PropertyFood(),
                            PropertyFood(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PropertyFood extends StatelessWidget {
  const PropertyFood({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.purple[200],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Calorias",
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.white,
                  ),
            ),
            Text(
              "25",
              style: Theme.of(context).textTheme.bodyText1.copyWith(
                    color: Colors.white,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
