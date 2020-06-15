import 'package:flutter/material.dart';
import 'package:fun_cooking/User/ui/widgets/collection/filter.dart';
import 'package:fun_cooking/User/ui/widgets/collection/label_collection.dart';
import 'package:fun_cooking/widgets/food_card.dart';

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
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 28),
            child: Column(
              children: <Widget>[
                Filter(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    LabelCollection(),
                    Wrap(
                      spacing: 10,
                      children: <Widget>[
                        FoodCard(),
                      ],
                    )
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
