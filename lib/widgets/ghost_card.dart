import 'package:flutter/material.dart';

class GhostCard extends StatelessWidget {
  final String name;
  final String text;
  final String img;
  final Color color;

  const GhostCard({
    Key key,
    @required this.name,
    @required this.text,
    @required this.img,
    this.color,
  }); 

  @override
  Widget build(BuildContext context) {
    return Card(
      color: this.color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        width: 160,
        height: 200,
        child: Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 160,
                padding: EdgeInsets.fromLTRB(16, 20, 8, 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      this.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.headline6.copyWith(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                    ),
                    Text(
                      this.text,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.subtitle2.copyWith(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                height: 100,
                width: 100,
                margin: EdgeInsets.only(top: 16),
                child: Hero(
                  tag: 'ghost',
                  child: Image.asset('assets/${this.img}.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
