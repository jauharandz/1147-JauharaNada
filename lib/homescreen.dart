import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          height: size.height * .3,
          decoration: BoxDecoration(
              image: DecorationImage(
            alignment: Alignment.topCenter,
            image: AssetImage('assets/images/gambaruts1.jpg'),
          )),
        ),
      ],
    ));
  }
}
