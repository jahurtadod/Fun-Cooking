import 'package:flutter/material.dart';

class SelectMode extends StatefulWidget {
  final String text;
  final String img;
  final VoidCallback onPressed;
  final Color color;
  final bool direction;

  const SelectMode({
    Key key,
    @required this.text,
    @required this.img,
    @required this.onPressed,
    this.color,
    this.direction,
  });

  @override
  _SelectModeState createState() => _SelectModeState();
}

class _SelectModeState extends State<SelectMode> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPressed,
      child: Stack(
        alignment: widget.direction
            ? AlignmentDirectional.bottomStart
            : AlignmentDirectional.bottomEnd,
        children: <Widget>[
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: widget.color,
            ),
            child: widget.direction
                ? Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(),
                      ),
                      Expanded(
                        child: Text(
                          widget.text,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline6.copyWith(
                                color: Colors.white,
                              ),
                        ),
                      ),
                    ],
                  )
                : Row(
                    children: <Widget>[
                      Expanded(
                        child: Text(
                          widget.text,
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.headline6.copyWith(
                                color: Colors.white,
                              ),
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                    ],
                  ),
          ),
          Container(
            padding: widget.direction
                ? EdgeInsets.fromLTRB(16, 8, 0, 8)
                : EdgeInsets.fromLTRB(0, 8, 16, 8),
            height: 150,
            child: Image.asset('assets/${widget.img}.png'),
          ),
        ],
      ),
    );
  }
}
