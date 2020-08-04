import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingGame extends StatelessWidget {
  final Function clean;
  final Function scrollUp;
  final Function scrollDown;

  const SettingGame({
    this.clean,
    this.scrollUp,
    this.scrollDown
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Center(
                child: Container(
                  width: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: scrollUp,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(2, 2, 3, 2),
                          child: Icon(
                            FontAwesomeIcons.angleUp,
                            color: Colors.grey,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                                width: 2,
                                color: Colors.grey,
                                style: BorderStyle.solid),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: scrollDown,
                        child: Container(
                          padding: EdgeInsets.fromLTRB(3, 2, 2, 2),
                          child: Icon(
                            FontAwesomeIcons.angleDown,
                            color: Colors.grey,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            border: Border.all(
                                width: 2,
                                color: Colors.grey,
                                style: BorderStyle.solid),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: clean,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Theme.of(context).colorScheme.secondary,
                ),
                child: Center(
                    child: Text(
                  "PREPARAR",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
