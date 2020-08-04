import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FavoriteButton();
  }

}


class _FavoriteButton extends State<FavoriteButton> {

  void onPressedFav(){
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text("Agregaste a tus Favoritos"),
        )
    );

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Colors.white,
      mini: true,
      tooltip: "Favoritos",
      onPressed: onPressedFav,
      child: Icon(
        Icons.favorite_border,
        size: 20,
      ),
    );
  }

}