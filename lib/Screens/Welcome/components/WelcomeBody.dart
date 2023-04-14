import 'package:flutter/material.dart';
import 'package:grocery_tracker_app/components/rounded_button.dart';
import 'package:grocery_tracker_app/constants.dart';

class WelcomeBody extends StatelessWidget {
  const WelcomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          RoundedButton(
            text: "LOGIN",
            press: () {},
          ),
          RoundedButton(
            text: "SIGNUP",
            press: () {},
            color: kPrimaryLightColor,
          ),
        ],
      ),
    );
  }
}
