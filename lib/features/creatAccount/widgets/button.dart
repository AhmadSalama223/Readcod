import 'package:flutter/material.dart';

import '../../../core/Colors/Colors.dart';

class Button extends StatelessWidget {
  double topPadding;
   Button({required this.topPadding});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding:  EdgeInsets.only(top: topPadding),
      child: Container(
        width: size.width * 0.9,
        height: size.height * 0.0685,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: tertiary,
        ),
        child: TextButton(
          onPressed: () {},
          child: const Text(
            "Proceed",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: "Recoleta",
                fontSize: 18),
          ),
        ),
      ),
    );
  }
}
