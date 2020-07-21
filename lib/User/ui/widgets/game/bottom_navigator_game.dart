import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigatonGame extends StatelessWidget {
  final Function() clean;

  const BottomNavigatonGame({
    this.clean,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      child: Material(
        color: Color(0xFF055C97),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: InkWell(
                onTap: clean,
                child: BarItemGame(
                  icon: FontAwesomeIcons.trashAlt,
                  text: "Vaciar",
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Container(
                        height: 160,
                        color: Colors.amber,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4)),
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        ),
                                        child: IconButton(
                                            icon: Icon(
                                              FontAwesomeIcons.music,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {}),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Música"),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(4)),
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        ),
                                        child: IconButton(
                                            icon: Icon(
                                              FontAwesomeIcons.volumeUp,
                                              color: Colors.white,
                                            ),
                                            onPressed: () {}),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text("Sonidos"),
                                    ],
                                  ),
                                ],
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      );
                    },
                  );
                },
                child: BarItemGame(
                  icon: FontAwesomeIcons.slidersH,
                  text: "Opciones",
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                onTap: () => Navigator.of(context).pushNamed('/collection'),
                child: BarItemGame(
                  icon: FontAwesomeIcons.bookOpen,
                  text: "Colección",
                ),
              ),
            ),
          ],
        ),
      ),
    );
    // return BottomNavigationBar(
    //   backgroundColor: Color(0xFF055C97),
    //   items: [
    //     BottomNavigationBarItem(
    //       icon: GestureDetector(
    //         onTap: clean,
    //         child: Icon(
    //           FontAwesomeIcons.trashAlt,
    //           color: Colors.white70,
    //         ),
    //       ),
    //       title: GestureDetector(
    //         onTap: clean,
    //         child: Text(
    //           "Vaciar",
    //           style: TextStyle(
    //             color: Colors.white70,
    //           ),
    //         ),
    //       ),
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(
    //         FontAwesomeIcons.slidersH,
    //         color: Colors.white70,
    //       ),
    //       title: Text(
    //         "Opciones",
    //         style: TextStyle(
    //           color: Colors.white70,
    //         ),
    //       ),
    //     ),
    //     BottomNavigationBarItem(
    //       icon: Icon(
    //         FontAwesomeIcons.bookOpen,
    //         color: Colors.white70,
    //       ),
    //       title: Text(
    //         "Colección",
    //         style: TextStyle(
    //           color: Colors.white70,
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}

class BarItemGame extends StatelessWidget {
  final IconData icon;
  final String text;

  const BarItemGame({
    this.icon,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white70,
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}
