import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class VideoButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _VideoButton();
  }

}


class _VideoButton extends State<VideoButton> {

  void onPressedVid(){
    Scaffold.of(context).showSnackBar(
        SnackBar(
          content: Text("Agregaste a tus Favoritos"),
          
        ),
    );

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Colors.white,
      mini: true,
      tooltip: "Video",
      onPressed: () => {launch('https://www.youtube.com/watch?v=Z1OLG7F3HD4')},
      child: Icon(
        //FontAwesomeIcons.photoVideo,
        Icons.slow_motion_video,
        size: 20,
      ),
    );
  }

}