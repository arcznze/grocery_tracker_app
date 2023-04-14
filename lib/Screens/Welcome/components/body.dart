import 'package:flutter/material.dart';
import 'package:grocery_tracker_app/Screens/Welcome/components/background.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //Nos da las dimensiones totales de nuestra pantalla.
    return Background(
      child: Column(
        children: <Widget>[
        ],
      ),
    );
  }
}

