import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_tracker_app/constants.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    super.key, required this.child,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; 
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/topCircle.png", 
              width: size.width,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Image.asset(
                "assets/images/bottonCircle.png",
                width: size.width,
              )
            ),
            Positioned(
              right: 0,
              child: Image.asset(
                "assets/images/middleCircle.png",
                width: size.width,
                )
              ),
            Positioned(
              child: SvgPicture.asset(
                "assets/icons/topIcon.svg",
                width: size.width,
                )
              ),
              Positioned(
                child: SvgPicture.asset(
                  "assets/icons/bottomIcon.svg",
                  width: size.width,
                  )
              ),
              TextButton(
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                  backgroundColor: kPrimaryColor,
                  ),
                  onPressed: (){}, 
                  child: const Text(
                    "LOGIN", 
                    style: TextStyle(color: Colors.white),
                    ),
                  ),
        ],
      ),
    );
  }
}