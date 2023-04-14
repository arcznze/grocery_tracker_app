import 'package:flutter/material.dart';
import 'package:grocery_tracker_app/Screens/Welcome/components/WelcomeBody.dart';
import 'package:grocery_tracker_app/Screens/Welcome/components/body.dart';
import 'package:grocery_tracker_app/compoents/backgroun.dart';
import 'package:grocery_tracker_app/responsive.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Responsive(
          mobile: const MobileLoginScreen(),
          desktop: Column(
            children: const [
              WelcomeBody()
            ],
            )
        ),
      ),
    );
   }
}

class MobileLoginScreen extends StatelessWidget {
  const MobileLoginScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>  [
        WelcomeBody()
      ],
    );
  }
}