import 'package:flutter/material.dart';
import 'package:fun_cooking/User/ui/widgets/home/profile.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Container(
            padding: EdgeInsets.all(28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Profile(),
                Container(
                  height: 100,
                  width: double.infinity,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  child: Row(
                    children: <Widget>[
                      Image.asset('assets/funcooking.png'),
                      Text(
                        "Juega",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      
    );
  }
}
