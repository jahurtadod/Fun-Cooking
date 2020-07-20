import 'package:flutter/material.dart';
import 'package:fun_cooking/User/ui/widgets/game/bottom_navigator_game.dart';
import 'package:fun_cooking/User/ui/widgets/game/food_card_medium.dart';
import 'package:fun_cooking/User/ui/widgets/game/food_card_small.dart';
import 'package:fun_cooking/User/ui/widgets/game/nav_game.dart';
import 'package:fun_cooking/User/ui/widgets/game/search_bar.dart';
import 'package:fun_cooking/User/ui/widgets/game/settings_game.dart';

class GameCombine extends StatefulWidget {
  @override
  _GameCombineState createState() => _GameCombineState();
}

class _GameCombineState extends State<GameCombine> {
  List<FoodCardSmall> ingredients = <FoodCardSmall>[];

  @override
  Widget build(BuildContext context) {
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
                              // Container(
                              //   height: 65,
                              //   width: 60,
                              //   padding: EdgeInsets.symmetric(horizontal: 16),
                              //   child: ListView.separated(
                              //     separatorBuilder: (_, index) {
                              //       return Container(
                              //         width: 10,
                              //       );
                              //     },
                              //     itemCount: ingredients.length,
                              //     itemBuilder: (context, index) {
                              //       return FoodCardSmall();
                              //     },
                              //     scrollDirection: Axis.horizontal,
                              //   ),
                              // ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                padding: EdgeInsets.only(
                                  right: 28,
                                ),
                                child: DragTarget<Color>(
                                  onWillAccept: (value) =>
                                      value == Color(0xFFFF441),
                                  onAccept: (value) {
                                    setState(() {
                                      ingredients.insert(0, FoodCardSmall());
                                    });
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
                  padding: EdgeInsets.symmetric(horizontal: 28, vertical: 28),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SearchBar(),
                      Wrap(
                        children: <Widget>[
                          FoodCardMedium(),
                          Draggable<Color>(
                            data: Color(0xFFFF441),
                            child: FoodCardMedium(),
                            feedback: FoodCardMedium(),
                            childWhenDragging: Opacity(
                              opacity: 0.5,
                              child: FoodCardMedium(),
                            ),
                          ),
                        ],
                      ),
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
