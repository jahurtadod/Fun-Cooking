import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fun_cooking/widgets/food_card.dart';

class GameCombine extends StatefulWidget {
  @override
  _GameCombineState createState() => _GameCombineState();
}

class _GameCombineState extends State<GameCombine> {
  List<FoodCard> ingredients = <FoodCard>[];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text(
            "Combina y crea",
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Colors.white,
                ),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: null),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 28, vertical: 4),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Ingredientes"),
                      Container(
                        width: 32,
                        child: Icon(
                          FontAwesomeIcons.backspace,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ),
                DragTarget<Color>(
                  onWillAccept: (value) => value == Color(0xFFFF441),
                  onAccept: (value) {
                    setState(() {
                      ingredients.insert(0, FoodCard());
                    });
                    print(ingredients);
                  },
                  onLeave: (value) {},
                  builder: (context, candidates, rejects) {
                    return Container(
                      margin: EdgeInsets.symmetric(vertical: 8),
                      height: 200,
                      width: double.infinity,
                      child: ListView.separated(
                        separatorBuilder: (_, index) {
                          return SizedBox(
                            width: 25,
                          );
                        },
                        itemCount: ingredients.length,
                        itemBuilder: (context, index) {
                          return Draggable<int>(
                            data: index,
                            feedback: FoodCard(),
                            childWhenDragging: Opacity(
                              opacity: 0.5,
                              child: FoodCard(),
                            ),
                            child: InkWell(
                              onTap: () {
                                print(index);
                                setState(() {
                                  ingredients.removeAt(index);
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 10),
                                child: FoodCard(),
                              ),
                            ),
                          );
                        },
                        scrollDirection: Axis.horizontal,
                      ),
                    );
                  },
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: DragTarget<Color>(
                        onWillAccept: (value) => value == Color(0xFFFF441),
                        onAccept: (value) {
                          setState(() {
                            ingredients.insert(0, FoodCard());
                          });
                          print(ingredients);
                        },
                        onLeave: (value) {},
                        builder: (context, candidates, rejects) {
                          return candidates.length > 0
                              ? FoodCard()
                              : Container(
                                  child: OutlineButton(
                                    onPressed: null,
                                    child: Text("Agregar"),
                                  ),
                                );
                        },
                      ),
                    ),
                    Expanded(
                      child: DragTarget<Color>(
                        onWillAccept: (value) => value == Color(0xFFFF441),
                        onAccept: (value) {
                          setState(() {
                            ingredients.insert(0, FoodCard());
                          });
                          print(ingredients);
                        },
                        onLeave: (value) {},
                        builder: (context, candidates, rejects) {
                          return candidates.length > 0
                              ? FoodCard()
                              : Container(
                                  child: OutlineButton(
                                    onPressed: null,
                                    child: Text("Quitar"),
                                  ),
                                );
                        },
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 28, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Tu colección"),
                      Icon(
                        FontAwesomeIcons.filter,
                        size: 20,
                      )
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: DragTarget<int>(
                        onWillAccept: (value) => value >= 0,
                        onAccept: (value) {
                          setState(() {
                            ingredients.removeAt(value);
                          });
                        },
                        onLeave: (value) {},
                        builder: (context, candidates, rejects) {
                          return Wrap(
                            children: <Widget>[
                              Draggable<Color>(
                                data: Color(0xFFFF441),
                                child: FoodCard(),
                                feedback: FoodCard(),
                                childWhenDragging: Opacity(
                                  opacity: 0.5,
                                  child: FoodCard(),
                                ),
                                // Container(
                                //   color: Theme.of(context).colorScheme.primary,
                                //   width: 50,
                                //   height: 50,
                                // ),
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
