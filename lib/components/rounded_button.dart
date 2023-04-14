import 'package:flutter/material.dart';

import '../constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  const RoundedButton({
    super.key, 
    required this.text, 
    required this.press, 
    this.color = kPrimaryColor, 
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 60),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
            backgroundColor: color,
            ),
            onPressed: (){}, 
            child: Text(
              text, 
              style: TextStyle(color: textColor),
              ),
            ),
      ),
    );
  }
}