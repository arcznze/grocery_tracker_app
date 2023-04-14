import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_tracker_app/components/rounded_button.dart';
import 'package:grocery_tracker_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; //Nos da las dimensiones totales de nuestra pantalla.
    return Column(
      children: [
        RoundedButton(
            text: "LOGIN",
            press: () {},
        ),
        RoundedButton(
          text: "SIGNUP", 
          press: (){},
          color: kPrimaryLightColor,)
      ],
    );
    // return Container(
    //   height: size.height,
    //   width: double.infinity,
    //   child: Stack(
    //     children: <Widget>[
    //       Positioned(
    //           child: SvgPicture.asset(
    //         "assets/icons/topIcon.svg",
    //         width: size.width,
    //       )),
    //       Positioned(
    //           child: SvgPicture.asset(
    //         "assets/icons/bottomIcon.svg",
    //         width: size.width,
    //       )),
    //       RoundedButton(
    //         text: "LOGIN",
    //         press: () {},
    //       ),
    //     ],
    //   ),
    // );
  }
}
