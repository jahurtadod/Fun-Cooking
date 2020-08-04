import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoFood extends StatefulWidget {
  final String name;
  final String text;
  final String img;
  final Color color;
  final Color colorTop;

  const InfoFood({
    Key key,
    @required this.name,
    @required this.text,
    @required this.img,
    this.color,
    this.colorTop,
  });

  @override
  _InfoFoodState createState() => _InfoFoodState();
}

class _InfoFoodState extends State<InfoFood> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: widget.colorTop,
        ),
        body: Container(
          color: widget.color,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(16),
                  width: 150,
                  height: 150,
                  child: Hero(
                    tag: 'food',
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
                    padding: EdgeInsets.symmetric(vertical: 24, horizontal: 40),
                    child: Column(
                      children: <Widget>[
                        // Container(
                        //   margin: EdgeInsets.only(bottom: 16),
                        //   width: 80,
                        //   height: 5,
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.all(Radius.circular(5)),
                        //     color: Colors.grey,
                        //   ),
                        // ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(widget.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    .copyWith(fontSize: 20, height: 1.7)),
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
                                  Text("Descripción",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(fontSize: 15, height: 1.7, fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(widget.text,
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(fontSize: 14, height: 1.7)),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 5),
                          color: widget.color,
                          height: 1,
                        ),
                        Row(
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(bottom: 15),
                              child: Column(
                                children: [
                                  Text("Información nutricional",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headline6
                                          .copyWith(fontSize: 15, height: 1.7, fontWeight: FontWeight.bold)),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Wrap(
                          spacing: 10,
                          runSpacing: 10,
                          children: <Widget>[
                            PropertyFood(
                                name: "Calorías",
                                valor: "33 cal",
                                color: widget.colorTop),
                            PropertyFood(
                                name: "Grasas",
                                valor: "0.3 g",
                                color: widget.colorTop),
                            PropertyFood(
                                name: "Colesterol",
                                valor: "0 mg",
                                color: widget.colorTop),
                            PropertyFood(
                                name: "Sodio",
                                valor: "1 mg",
                                color: widget.colorTop),
                            PropertyFood(
                                name: "Potasio",
                                valor: "153 mg",
                                color: widget.colorTop),
                            PropertyFood(
                                name: "Carbohidratos",
                                valor: "8 g",
                                color: widget.colorTop),
                            PropertyFood(
                                name: "Proteínas",
                                valor: "0.7 g",
                                color: widget.colorTop),
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
  final String name;
  final String valor;
  final Color color;
  const PropertyFood({
    @required this.name,
    @required this.valor,
    this.color,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 150,
      decoration: BoxDecoration(
        border: Border.all(color: this.color, width: 1),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(this.name,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontSize: 15, height: 1.7, color: this.color, fontWeight: FontWeight.bold)),
            Text(this.valor,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    .copyWith(fontSize: 15, height: 1.7, color: this.color)),
          ],
        ),
      ),
    );
  }
}
