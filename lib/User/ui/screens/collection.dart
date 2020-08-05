import 'package:flutter/material.dart';
import 'package:fun_cooking/User/ui/widgets/collection/label_collection.dart';
import 'package:fun_cooking/widgets/food_card.dart';
import 'package:fun_cooking/widgets/ghost_card.dart';

class Collection extends StatefulWidget {
  @override
  _CollectionState createState() => _CollectionState();
}

class _CollectionState extends State<Collection> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Colección",
            style: Theme.of(context).textTheme.headline6.copyWith(
                  color: Colors.white,
                ),
          ),
          backgroundColor: Color(0xFFF06C5C),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 28),
            child: Column(
              children: <Widget>[
                // Filter(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    LabelCollection(
                      name: "Frutas",
                      color: Colors.pink[200],
                    ),
                    Wrap(
                      children: <Widget>[
                        FoodCard(
                          name: "Fresas",
                          text: "33 kcal",
                          img: "fresa",
                          description:
                              "Fragaria, llamado comúnmente fresa o frutilla, es un género de plantas rastreras "
                              "estoloníferas de la familia Rosaceae. Agrupa unos 400 taxones descritos, de los "
                              "cuales solo unos 20 están aceptados.​ Son cultivadas por su fruto comestible llamado "
                              "de la misma manera, fresa o frutilla.",
                          color: Color(0xFFFFE3E5),
                          colorsecundary: Colors.pink[200],
                        ),
                        FoodCard(
                          name: "Moras",
                          text: "43 kcal",
                          img: "mora",
                          description:
                              "Las moras son frutas o bayas que, a pesar de proceder de especies "
                              "vegetales que son completamente diferentes, poseen aspecto similar y características "
                              "comunes. En ocasiones, las distintas moras pueden ser confundidas e incluso obviadas. "
                              "En total existen más de 300 especies de moras diferentes.",
                          color: Color(0xFFDAE6FC),
                          colorsecundary: Color(0xFF6899F3),
                        ),
                      ],
                    ),
                    LabelCollection(
                      name: "Lacteos",
                      color: Colors.cyan[700],
                    ),
                    Wrap(
                      children: <Widget>[
                        FoodCard(
                          name: "Leche",
                          text: "42 kcal",
                          img: "leche",
                          description:
                              "Es una secreción nutritiva de color blanquecino opaco producida por las células "
                              "secretoras de las glándulas mamarias de los mamíferos, incluidos los monotremas. "
                              "Su principal función es la de nutrir a las crías hasta que sean capaces de digerir otros alimentos, "
                              "además de proteger su tracto gastrointestinal contra patógenos, toxinas e inflamación "
                              "y contribuir a su salud metabólica regulando los procesos de obtención de energía. ",
                          color: Color(0xFFB6E2DC),
                          colorsecundary: Color(0xFF8AD0C7),
                        ),
                      ],
                    ),
                    LabelCollection(
                      name: "Productos Procesados",
                      color: Color(0xFFE7C4B1),
                    ),
                    Wrap(
                      children: <Widget>[
                        FoodCard(
                          name: "Chocolate",
                          text: "535 kcal",
                          img: "chocolate",
                          description:
                              "Es el alimento que se obtiene mezclando azúcar con dos productos que derivan "
                              "de la manipulación de las semillas del cacao: la masa del cacao y la manteca de cacao. "
                              "A partir de esta combinación básica se elaboran los distintos tipos de chocolate que dependen "
                              "de la proporción entre estos elementos y de su mezcla.",
                          color: Color(0xFFE7C4B1),
                          colorsecundary: Color(0xFFD9A082),
                        ),
                      ],
                    ),
                    LabelCollection(
                      name: "Fantasmas",
                      color: Colors.black,
                    ),
                    Wrap(
                      children: <Widget>[
                        GhostCard(
                          name: "Ohh Nooo!",
                          text: "Algo salió mal intenta con otros ingredientes",
                          img: "ghost",
                          color: Color(0xF0000000),
                        ),
                        GhostCard(
                          name: "Ohh Nooo!",
                          text: "La combinación no es posible",
                          img: "fuego",
                          color: Color(0xF0000000),
                        ),
                        GhostCard(
                          name: "Ohh Nooo!",
                          text: "Algo falta, que será?",
                          img: "jeit",
                          color: Color(0xF0000000),
                        ),
                      ],
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
