import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/Colors/Colors.dart';

class Gender extends StatelessWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size =MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 31.0, right: 31),
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Container(
              height: size.height * 0.45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "Male",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              color: danger),
                        ),
                      ),
                      SvgPicture.asset("assets/images/character-1.svg"),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: size.width * 0.0625,
          ),
          Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Container(
              height: size.height * 0.45,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25)),
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: TextButton(
                  onPressed: () {},
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          textAlign: TextAlign.center,
                          "Female",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              color: danger),
                        ),
                      ),
                      SvgPicture.asset("assets/images/character-2.svg"),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
