import 'package:flutter/material.dart';
import 'package:fun_cooking/User/ui/screens/info_recipe.dart';
import 'package:fun_cooking/User/ui/widgets/game/food_card_medium.dart';

class Recipe extends StatefulWidget {
  @override
  _RecipeState createState() => _RecipeState();
}

class _RecipeState extends State<Recipe> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Recetas",
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Colors.white,
                ),
          ),
          backgroundColor: Color(0xFF6358A1),
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(28, 20, 28, 0),
                      child: Stack(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => InfoRecipe(
                                    name: "Batido de Leche",
                                    ingredientes: "1/2 K. Fresas \n"
                                        "1/2 Tza. Leche\n",
                                    text:
                                        "1. Lavar primero muy bien las fresas, retirarle los tallos y proceder a cortarlas en mitades. \n"
                                        "2. Colocarlas en la Licuadora, añadir el Agua, la Leche y el Azúcar. \n"
                                        "3. Servir de inmediato en vaso de vidrio. \n"
                                        "4. Disfrutar el jugo acompañado de galletas u otro alimento. \n",
                                    img: "batido",
                                    color: Colors.pink[100],
                                    colorTop: Colors.pink[100],
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              width: double.infinity,
                              height: 350,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)),
                                color: Color(0xff0D0106),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2017/03/31/16/07/smoothie-2191709_1280.jpg"),
                                    fit: BoxFit.cover,
                                    colorFilter: new ColorFilter.mode(
                                        Colors.black.withOpacity(0.86),
                                        BlendMode.dstATop)),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 18,
                            left: 20,
                            child: Text(
                              "Batido de Fresas",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(28, 0, 28, 0),
                      child: Text(
                        "Recetas descubiertas recientemente",
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: SizedBox(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            SizedBox(
                              width: 28,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => InfoRecipe(
                                      name: "Pastel des",
                                      ingredientes: "1/2 K. Fresas \n"
                                          "1/2 Tza. Leche\n",
                                      text:
                                          "1. Lavar primero muy bien las fresas, retirarle los tallos y proceder a cortarlas en mitades. \n"
                                          "2. Colocarlas en la Licuadora, añadir el Agua, la Leche y el Azúcar. \n"
                                          "3. Servir de inmediato en vaso de vidrio. \n"
                                          "4. Disfrutar el jugo acompañado de galletas u otro alimento. \n",
                                      img: "recipe1",
                                      color: Color(0xFFE7C4B1),
                                      colorTop: Color(0xFFE7C4B1),
                                    ),
                                  ),
                                );
                              },
                              child: FoodCardMedium(
                                name: "Pastel de chocolate",
                                text: "371 kcal",
                                img: "recipe1",
                                color: Color(0xFFE7C4B1),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => InfoRecipe(
                                      name: "Batido de moras",
                                      ingredientes: "1/2 K. Fresas \n"
                                          "1/2 Tza. Leche\n",
                                      text:
                                          "1. Lavar primero muy bien las fresas, retirarle los tallos y proceder a cortarlas en mitades. \n"
                                          "2. Colocarlas en la Licuadora, añadir el Agua, la Leche y el Azúcar. \n"
                                          "3. Servir de inmediato en vaso de vidrio. \n"
                                          "4. Disfrutar el jugo acompañado de galletas u otro alimento. \n",
                                      img: "recipe2",
                                      color: Color(0xFFB5CCF8),
                                      colorTop: Color(0xFFB5CCF8),
                                    ),
                                  ),
                                );
                              },
                              child: FoodCardMedium(
                                name: "Batido de \nmoras",
                                text: "38 kcal",
                                img: "recipe2",
                                color: Color(0xFFB5CCF8),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => InfoRecipe(
                                      name: "Donas",
                                      ingredientes: "1/2 K. Fresas \n"
                                          "1/2 Tza. Leche\n",
                                      text:
                                          "1. Lavar primero muy bien las fresas, retirarle los tallos y proceder a cortarlas en mitades. \n"
                                          "2. Colocarlas en la Licuadora, añadir el Agua, la Leche y el Azúcar. \n"
                                          "3. Servir de inmediato en vaso de vidrio. \n"
                                          "4. Disfrutar el jugo acompañado de galletas u otro alimento. \n",
                                      img: "recipe3",
                                      color: Color(0xFFFFE3E5),
                                      colorTop: Color(0xFFFFE3E5),
                                    ),
                                  ),
                                );
                              },
                              child: FoodCardMedium(
                                name: "Donas",
                                text: "452 kcal",
                                img: "recipe3",
                                color: Color(0xFFFFE3E5),
                              ),
                            ),
                            SizedBox(
                              width: 28,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      height: 40,
                      width: double.infinity,
                      child: RaisedButton(
                        color: Color(0xFF6358A1),
                        onPressed: () {
                          Navigator.of(context).pushNamed('/game');
                        },
                        child: Text(
                          "Descrubir nuevas recetas",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1
                              .copyWith(color: Colors.white),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
