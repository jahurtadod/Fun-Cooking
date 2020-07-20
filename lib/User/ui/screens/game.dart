import 'package:flutter/material.dart';
import 'package:fun_cooking/User/model/temp_data_card.dart';
import 'package:fun_cooking/User/ui/widgets/game/bottom_navigator_game.dart';
import 'package:fun_cooking/User/ui/widgets/game/draggable_food_card.dart';
import 'package:fun_cooking/User/ui/widgets/game/food_card_small.dart';
import 'package:fun_cooking/User/ui/widgets/game/nav_game.dart';
import 'package:fun_cooking/User/ui/widgets/game/search_bar.dart';
import 'package:fun_cooking/User/ui/widgets/game/settings_game.dart';
import 'package:flutter/services.dart';

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
                      SettingGame()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigatonGame(),
      ),
    );
  }
}
