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
                                    racion: "5 raciones",
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
                                      name: "Pastel de Chocolate",
                                      ingredientes: "230 g de harina de trigo \n"
                                          "3 huevos\n"
                                          "30 mL de leche\n"
                                          "150 g de chocolate amargo\n",
                                      text:
                                          "1. Precalienta el horno a 180 ºC. \n"
                                          "2. Disuelve la cocoa en el agua hirviendo. Enfría ligeramente. \n"
                                          "3. Mezcla la harina con la sal, el bicarbonato y los polvos para hornear. \n"
                                          "4. Derrite a baño María los chocolates por separado, añade dos cucharadas de mantequilla y combina perfectamente. \n"
                                          "5. Bate la mantequilla, agreag el azúcar y la cocoa hasta integrar. Pásalos a una manga. \n",
                                      img: "recipe1",
                                      color: Color(0xFFE7C4B1),
                                      colorTop: Color(0xFFE7C4B1),
                                      racion: "8 raciones",
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
                                      ingredientes: "1/2 K. Moras \n"
                                          "1/2 Tza. Leche\n",
                                      text:
                                          "1. Lavar primero muy bien las moras, retirarle los tallos y proceder a cortarlas en mitades. \n"
                                          "2. Colocarlas en la Licuadora, añadir el Agua, la Leche y el Azúcar. \n"
                                          "3. Servir de inmediato en vaso de vidrio. \n"
                                          "4. Disfrutar el jugo acompañado de galletas u otro alimento. \n",
                                      img: "recipe2",
                                      color: Color(0xFFB5CCF8),
                                      colorTop: Color(0xFFB5CCF8),
                                      racion: "3 raciones",
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
                                      ingredientes: "1 Kg Harina\n"
                                          "4 huevos \n"
                                          "200 ml de leche tibia\n"
                                          "260 g de azúcar \n"
                                          "80 g de mantequilla \n"
                                          "1 cucharadita de vainilla\n",
                                      text:
                                          "1. colocar la harina en un tazón amplio, formar un volcán con ella y añadir en el centro la leche y la levadura. \n"
                                          "2. Hecho esto, derrite la mantequilla en el microondas y mézclala con la harina y el resto de los ingredientes, es decir, incorpora los huevos, el azúcar y la vainilla. \n"
                                          "3. Cuando la masa de las donas no se quede pegada en tus manos, haz una bola con ella. \n"
                                          "4. Pasado este tiempo, la masa tiene que haber duplicado su volumen.  \n"
                                          "5. Con la masa ya estirada, corta las donas con el diámetro deseado y resérvalas sobre una bandeja forrada con papel vegetal o sulfurizado. \n"
                                          "6. Dejarlas reposar durante 10 minutos más para que aumenten su tamaño. \n"
                                          "7. Ahora tienes dos opciones, puedes hacer donas fritas o al horno.  \n",
                                      img: "recipe3",
                                      color: Color(0xFFFFE3E5),
                                      colorTop: Color(0xFFFFE3E5),
                                      racion: "6 raciones",
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
