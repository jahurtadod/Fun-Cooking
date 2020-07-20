import 'package:flutter/material.dart';
import 'package:fun_cooking/User/model/temp_data_card.dart';
import 'package:fun_cooking/User/ui/widgets/game/food_card_medium.dart';

class DraggableFoodCard extends StatelessWidget {
  final String name;
  final String text;
  final String img;
  final Color color;

  const DraggableFoodCard({
    Key key,
    @required this.name,
    @required this.text,
    @required this.img,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Draggable<TempDataCard>(
      data: TempDataCard(img: this.img, color: this.color),
      child: FoodCardMedium(
        text: this.text,
        name: this.name,
        img: this.img,
        color: this.color,
      ),
      feedback: FoodCardMedium(
        text: this.text,
        name: this.name,
        img: this.img,
        color: this.color,
      ),
      childWhenDragging: Opacity(
        opacity: 0.5,
        child: FoodCardMedium(
          text: this.text,
          name: this.name,
          img: this.img,
          color: this.color,
        ),
      ),
    );
  }
}
