import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'how_many_days.dart';

class Oclock extends StatelessWidget {
  const Oclock({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: size.width * 0.852,
            height: size.height * 0.39,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              color: Color(0xff37474F).withOpacity(0.3),
            ),
            child: SvgPicture.asset("assets/images/Clock.svg"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              top: 184.0, right: 144, left: 60, bottom: 43),
          child: SvgPicture.asset("assets/images/amico.svg"),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15.0,right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HowManyDays(txt: "One Day"),
              HowManyDays(txt: "One Month"),
            ],
          ),
        ),
      ],
    );
  }
}
