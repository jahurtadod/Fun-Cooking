import 'package:flutter/material.dart';
import 'package:fun_cooking/User/model/temp_data_card.dart';
import 'package:fun_cooking/User/ui/widgets/game/bottom_navigator_game.dart';
import 'package:fun_cooking/User/ui/widgets/game/draggable_food_card.dart';
import 'package:fun_cooking/User/ui/widgets/game/food_card_small.dart';
import 'package:fun_cooking/User/ui/widgets/game/nav_game.dart';
import 'package:fun_cooking/User/ui/widgets/game/search_bar.dart';
import 'package:fun_cooking/User/ui/widgets/game/settings_game.dart';
import 'package:flutter/services.dart';
import 'package:fun_cooking/widgets/food_card.dart';
import 'package:fun_cooking/widgets/ghost_card.dart';

class GameCombine extends StatefulWidget {
  @override
  _GameCombineState createState() => _GameCombineState();
}

class _GameCombineState extends State<GameCombine> {
  List<FoodCardSmall> ingredients = <FoodCardSmall>[];

  @override
  Widget build(BuildContext context) {
    // int count = 4;

    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color.fromRGBO(14, 96, 151, 1),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  color: Color.fromRGBO(14, 96, 151, 1),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: NavGame(),
                      ),
                      Container(
                        height: 150,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              flex: 4,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(28, 0, 28, 10),
                                child:
                                    Center(child: Wrap(children: ingredients)),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                padding: EdgeInsets.only(
                                  right: 28,
                                ),
                                child: DragTarget<TempDataCard>(
                                  onWillAccept: (value) => value != null,
                                  onAccept: (value) {
                                    setState(
                                      () {
                                        if (ingredients.length == 3) {
                                          HapticFeedback.heavyImpact();
                                          //   ingredients.removeAt(count);
                                          //   count--;
                                          //   ingredients.insert(0, FoodCardSmall());
                                          //   if (count > 0) {
                                          //     count = 5;
                                          //   }
                                        } else {
                                          ingredients.insert(
                                            0,
                                            FoodCardSmall(
                                              nameImg: value.img,
                                              color: value.color,
                                            ),
                                          );
                                        }
                                      },
                                    );
                                    print(ingredients);
                                  },
                                  onLeave: (value) {},
                                  builder: (context, candidates, rejects) {
                                    return candidates.length > 0
                                        ? Container(
                                         
                                            margin: EdgeInsets.only(bottom: 16),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                            ),
                                            height: double.infinity,
                                            child: Center(
                                              child: Container(
                                                height: 50,
                                                width: 70,
                                                child: Image.asset(
                                                    'assets/pot.png'),
                                              ),
                                            ),
                                          )
                                        : Container(
                                            height: double.infinity,
                                            child: Center(
                                              child: Container(
                                                height: 50,
                                                width: 70,
                                                child: Image.asset(
                                                    'assets/pot.png'),
                                              ),
                                            ),
                                          );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                        //bottomLeft: Radius.circular(24),
                        //bottomRight: Radius.circular(24)
                        ),
                        
                    color: Colors.white,
                  ),
                  //color: Color.fromRGBO(112, 112, 112, 0.1),
                  padding: EdgeInsets.symmetric(horizontal: 28, vertical: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 18),
                        child: SearchBar(),
                      ),
                      Wrap(
                        children: <Widget>[
                          DraggableFoodCard(
                            name: "Fresas",
                            text: "5 kcal",
                            img: "fresa",
                            color: Color(0xFFFFE3E5),
                          ),
                          DraggableFoodCard(
                            name: "Leche",
                            text: "10 kcal",
                            img: "leche",
                            color: Color(0xFFFFF9FF),
                          ),
                          DraggableFoodCard(
                            name: "Huevos",
                            text: "12 kcal",
                            img: "huevo",
                            color: Color(0xFFfbd46d),
                          ),
                        ],
                      ),
                      Spacer(),
                      SettingGame(
                        clean: () {
                          if (ingredients.length > 1) {
                            var temp1 = ["leche", "fresa"];
                            bool good;
                            var tempIngredients = [];
                            for (var ingredient in ingredients) {
                              print(ingredient.nameImg);
                              tempIngredients.insert(0, ingredient.nameImg);
                            }
                            if (tempIngredients
                                .every((value) => temp1.contains(value))) {
                              good = true;
                            } else {
                              good = false;
                            }
                            showModalBottomSheet(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 380,
                                  color: Color(0xFFf4f6ff),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Expanded(
                                          child: Center(
                                            child: good
                                                ? FoodCard(
                                                    name: "Batido de Leche",
                                                    text: "26 Kcal",
                                                    img: "batido",
                                                    color: Color(0xFFFFE3E5),
                                                  )
                                                : GhostCard(
                                                    name: "Ohh Nooo!",
                                                    text:
                                                        "Algo salió mal intenta con otros ingredientes",
                                                    img: "ghost",
                                                    color: Color(0xF0000000),
                                                  ),
                                          ),
                                        ),
                                        Container(
                                          margin: EdgeInsets.fromLTRB(
                                              28, 6, 28, 28),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: <Widget>[
                                              FlatButton(
                                                child: Text(
                                                  'Explorar recetas',
                                                  style: TextStyle(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .secondary,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pushNamed(
                                                          '/info_recipe');
                                                },
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                width: 120,
                                                child: RaisedButton(
                                                  child: Text(
                                                    'Continuar',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline5
                                                        .copyWith(
                                                            color: Colors.white,
                                                            fontSize: 12),
                                                  ),
                                                  onPressed: () =>
                                                      Navigator.pop(context),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          }
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigatonGame(
          clean: () {
            setState(() {
              ingredients.clear();
            });
          },
        ),
      ),
    );
  }
}
