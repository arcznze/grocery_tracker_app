import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
    this.topImage = "assets/images/main_top.png",
    this.bottomImage = "assets/images/login_bottom.png",
  }) : super(key: key);

  final String topImage, bottomImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
                top: -100,
                left: -120,
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFD24C),
                    shape: BoxShape.circle,
                  ),
                )),
            Positioned(
                bottom: -170,
                left: 50,
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                  ),
                )),
            Positioned(
                top: 100,
                right: -275,
                child: Container(
                  width: 350,
                  height: 350,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                  ),
                )),
            Positioned(
              bottom: 50,
              left: 20,
              child: SvgPicture.asset(
                "assets/icons/topIcon.svg",
                width: 250,
                height: 250,
              ),
            ),
            Positioned(
              top: 50,
              right: 50,
                child: SvgPicture.asset(
                  "assets/icons/bottomIcon.svg",
                  width: 250,
                  height: 250,
                )),
            SafeArea(child: child),
          ],
        ),
      ),
    );
  }
}
