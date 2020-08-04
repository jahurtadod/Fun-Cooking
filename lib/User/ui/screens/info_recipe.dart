import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoRecipe extends StatefulWidget {
  final String name;
  final String text;
  final String ingredientes;
  final String img;
  final Color color;
  final Color colorTop;

  const InfoRecipe({
    Key key,
    @required this.name,
    @required this.text,
    @required this.img,
    @required this.ingredientes,
    this.color,
    this.colorTop,
  });
  @override
  _InfoRecipeState createState() => _InfoRecipeState();
}

class _InfoRecipeState extends State<InfoRecipe> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: widget.colorTop,
        ),
        body: Container(
          color: widget.color,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(16, 0, 16, 16),
                  width: 150,
                  height: 150,
                  child: Hero(
                    tag: widget.name,
                    child: Image.asset('assets/${widget.img}.png'),
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
                            Text(
                              widget.name,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            Row(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      FontAwesomeIcons.video,
                                      size: 14,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("Videos",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                                fontSize: 12, height: 1.7)),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  children: <Widget>[
                                    Icon(
                                      FontAwesomeIcons.solidHeart,
                                      size: 14,
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("Favoritos",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                                fontSize: 12, height: 1.7)),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Column(
                                children: [
                                  Text("Ingredientes",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(fontSize: 15, height: 1.7)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(widget.ingredientes,
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(fontSize: 15, height: 1.7)),
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(top: 15),
                              child: Column(
                                children: [
                                  Text("Pasos de la Receta",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(fontSize: 15, height: 1.7)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(widget.text,
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(fontSize: 13, height: 1.7)),
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
