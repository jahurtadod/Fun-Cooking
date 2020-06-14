import 'package:flutter/material.dart';
import 'package:fun_cooking/User/ui/widgets/home/footer.dart';
import 'package:fun_cooking/User/ui/widgets/home/profile.dart';
import 'package:fun_cooking/User/ui/widgets/home/select_mode.dart';

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
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Profile(),
                  SizedBox(
                    height: 8,
                  ),
                  SelectMode(
                    text: "Juega",
                    img: "img1",
                    onPressed: () {},
                    color: Theme.of(context).colorScheme.primary,
                    direction: true,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  SelectMode(
                    text: "Colección",
                    img: "img2",
                    onPressed: () {
                      Navigator.of(context).pushNamed('/collection');
                    },
                    color: Color(0xFFF06C5C),
                    direction: false,
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Tus cartas favoritas",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  SelectMode(
                    text: "Favoritos",
                    img: "img3",
                    onPressed: () {},
                    color: Color(0xFF6358A1),
                    direction: true,
                  ),
                  SizedBox(
                    height: 28,
                  ),
                  Footer()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
