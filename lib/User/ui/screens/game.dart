import 'package:flutter/material.dart';
import 'package:fun_cooking/User/model/temp_data_card.dart';
import 'package:fun_cooking/User/model/temp_recipe.dart';
import 'package:fun_cooking/User/ui/widgets/game/bottom_navigator_game.dart';
import 'package:fun_cooking/User/ui/widgets/game/draggable_food_card.dart';
import 'package:fun_cooking/User/ui/widgets/game/food_card_small.dart';
import 'package:fun_cooking/User/ui/widgets/game/nav_game.dart';
import 'package:fun_cooking/User/ui/widgets/game/search_bar.dart';
import 'package:fun_cooking/User/ui/widgets/game/settings_game.dart';
import 'package:flutter/services.dart';
import 'package:fun_cooking/widgets/food_card.dart';
import 'package:fun_cooking/widgets/ghost_card.dart';
import 'package:fun_cooking/widgets/temp.dart';

class GameCombine extends StatefulWidget {
  @override
  _GameCombineState createState() => _GameCombineState();
}

class _GameCombineState extends State<GameCombine> {
  List<FoodCardSmall> ingredients = <FoodCardSmall>[];
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    void _moveUp() {
      _controller.animateTo(_controller.offset - 110,
          duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
    }

    void _moveDown() {
      _controller.animateTo(_controller.offset + 110,
          duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Descubrir",
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Colors.white,
                ),
          ),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  color: Color(0xFF018FEF),
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
                                        if (ingredients.length == 4) {
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
                  padding: EdgeInsets.symmetric(horizontal: 28, vertical: 18),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 18),
                        child: SearchBar(),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 250,
                        child: ListView(
                          controller: _controller,
                          children: <Widget>[
                            SizedBox(
                              width: 28,
                            ),
                            Wrap(
                              children: <Widget>[
                                DraggableFoodCard(
                                  name: "Fresas",
                                  text: "33 kcal",
                                  img: "fresa",
                                  color: Color(0xFFFFE3E5),
                                ),
                                DraggableFoodCard(
                                  name: "Leche",
                                  text: "42 kcal",
                                  img: "leche",
                                  color: Color(0xFFFFF9FF),
                                ),
                                DraggableFoodCard(
                                  name: "Moras",
                                  text: "43 kcal",
                                  img: "mora",
                                  color: Color(0xFFB5CCF8),
                                ),
                                DraggableFoodCard(
                                  name: "Huevos",
                                  text: "12 kcal",
                                  img: "huevo",
                                  color: Color(0xFFfbd46d),
                                ),
                                DraggableFoodCard(
                                  name: "Chocolate",
                                  text: "535 kcal",
                                  img: "chocolate",
                                  color: Color(0xFFE7C4B1),
                                ),
                                DraggableFoodCard(
                                  name: "Harina",
                                  text: "364 kcal",
                                  img: "harina",
                                  color: Color(0xFFD1CBC7),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 28,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),
                      SettingGame(
                        scrollUp: () {
                          _moveUp();
                        },
                        scrollDown: () {
                          _moveDown();
                        },
                        clean: () {
                          if (ingredients.length > 1) {
                            var temp1 = ["leche", "fresa"];
                            var temp2 = ["leche", "mora"];
                            var temp3 = [
                              "leche",
                              "harina",
                              "huevo",
                              "chocolate"
                            ];

                            bool good = true;
                            TempRecipe temp;
                            var tempIngredients = [];
                            for (var ingredient in ingredients) {
                              print(ingredient.nameImg);
                              tempIngredients.insert(0, ingredient.nameImg);
                            }
                            if (tempIngredients
                                .every((value) => temp1.contains(value))) {
                              temp = TempRecipe(
                                name: "Batido de Leche",
                                text: "226 kcal",
                                img: "batido",
                                ingredientes: "1/2 K. Fresas \n"
                                    "1/2 Tza. Leche\n",
                                description:
                                    "1. Lavar primero muy bien las fresas, retirarle los tallos y proceder a cortarlas en mitades. \n"
                                    "2. Colocarlas en la Licuadora, añadir el Agua, la Leche y el Azúcar. \n"
                                    "3. Servir de inmediato en vaso de vidrio. \n"
                                    "4. Disfrutar el jugo acompañado de galletas u otro alimento. \n",
                                color: Color(0xFFFFE3E5),
                                color2: Colors.pink[200],
                              );
                            } else if (tempIngredients
                                .every((value) => temp2.contains(value))) {
                              temp = TempRecipe(
                                name: "Batido de Mora",
                                text: "310 kcal",
                                img: "recipe2",
                                ingredientes: "1/2 K. Fresas \n"
                                    "1/2 Tza. Leche\n",
                                description:
                                    "1. Lavar primero muy bien las fresas, retirarle los tallos y proceder a cortarlas en mitades. \n"
                                    "2. Colocarlas en la Licuadora, añadir el Agua, la Leche y el Azúcar. \n"
                                    "3. Servir de inmediato en vaso de vidrio. \n"
                                    "4. Disfrutar el jugo acompañado de galletas u otro alimento. \n",
                                color: Color(0xFFB5CCF8),
                                color2: Color(0xFF6899F3),
                              );
                            } else if (tempIngredients
                                .every((value) => temp3.contains(value))) {
                              if (tempIngredients.length >= 4) {
                                temp = TempRecipe(
                                  name: "Pastel de chocolate",
                                  text: "310 kcal",
                                  img: "recipe1",
                                  ingredientes: "1/2 K. Fresas \n"
                                      "1/2 Tza. Leche\n",
                                  description:
                                      "1. Lavar primero muy bien las fresas, retirarle los tallos y proceder a cortarlas en mitades. \n"
                                      "2. Colocarlas en la Licuadora, añadir el Agua, la Leche y el Azúcar. \n"
                                      "3. Servir de inmediato en vaso de vidrio. \n"
                                      "4. Disfrutar el jugo acompañado de galletas u otro alimento. \n",
                                  color: Color(0xFFB5CCF8),
                                  color2: Color(0xFFD9A082),
                                );
                              } else {
                                good = false;
                              }
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
                                                ? FoodCard2(
                                                    name: temp.name,
                                                    text: temp.text,
                                                    img: temp.img,
                                                    color: temp.color,
                                                    description:
                                                        temp.description,
                                                    ingredientes:
                                                        temp.ingredientes,
                                                    colorsecundary: temp.color2,
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
                                                onPressed: () =>
                                                    Navigator.of(context)
                                                        .pushNamed('/recipes'),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Container(
                                                width: 120,
                                                child: RaisedButton(
                                                  child: Text(
                                                    'Continuar',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
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
