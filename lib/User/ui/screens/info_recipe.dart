import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fun_cooking/widgets/favorite_button.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoRecipe extends StatefulWidget {
  final String name;
  final String text;
  final String ingredientes;
  final String img;
  final Color color;
  final Color colorTop;
  final String racion;

  const InfoRecipe({
    Key key,
    @required this.name,
    @required this.text,
    @required this.img,
    @required this.ingredientes,
    @required this.racion,
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
                  child: Image.asset('assets/${widget.img}.png'),
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
                            color: widget.colorTop,
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
                                    Container(
                                      width: 40,
                                      height: 40,
                                      child: RaisedButton(
                                        elevation: 5,
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100),
                                        ),
                                        padding: EdgeInsets.zero,
                                        onPressed: () => {
                                          launch(
                                              'https://www.youtube.com/watch?v=Z1OLG7F3HD4')
                                        },
                                        child: Center(
                                          child: Icon(
                                            Icons.slow_motion_video,
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Row(
                                  children: <Widget>[
                                    FavoriteButton(),
                                    SizedBox(
                                      width: 5,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15, bottom: 5),
                          color: widget.color,
                          height: 1,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: [
                                  Text("Ingredientes",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              fontSize: 15,
                                              height: 1.7,
                                              fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                FontAwesomeIcons.user,
                                size: 13,
                                color: Colors.black54,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(widget.racion,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(fontSize: 13, height: 1.7)),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Column(
                            children: [
                              Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(widget.ingredientes,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6
                                            .copyWith(
                                                fontSize: 14, height: 1.7)),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10, bottom: 5),
                                color: widget.color,
                                height: 1,
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              child: Column(
                                children: [
                                  Text("Preparación",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(
                                              fontSize: 15,
                                              height: 1.7,
                                              fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15, bottom: 5),
                          child: Column(
                            children: [
                              Text(widget.text,
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      .copyWith(fontSize: 13, height: 1.9)),
                            ],
                          ),
                        )
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
