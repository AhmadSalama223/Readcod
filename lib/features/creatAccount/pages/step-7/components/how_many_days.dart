import 'package:flutter/material.dart';

import '../../../../../core/Colors/Colors.dart';

class HowManyDays extends StatelessWidget {
  String txt;
   HowManyDays({required this.txt});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      width: size.width * 0.3212,
      height: size.height * 0.0674,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Text(
        txt,
        style:
        TextStyle(color: danger, fontSize: 16, fontWeight: FontWeight.w400),
      ),
    );
  }
}
