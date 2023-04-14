import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context)
        .size; //Nos da las dimensiones totales de nuestra pantalla.
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/topCircle.png",
              color: Colors.yellow,
              width: size.width,
            ),
          )
        ],
      ),
    );
  }
}
