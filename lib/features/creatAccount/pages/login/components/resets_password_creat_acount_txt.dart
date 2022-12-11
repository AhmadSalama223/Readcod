import 'package:flutter/material.dart';

import '../../../../../core/Colors/Colors.dart';

class ResetsPasswordCreatAcountTxt extends StatelessWidget {
  const ResetsPasswordCreatAcountTxt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(top: 23.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {},
              child: const Text(

                "Reset Password",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xffBA1A1A),
                    fontFamily: "Recoleta"),
              )),
          Text(
            "or",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: danger,
                fontFamily: "Recoleta"),
          ),
          TextButton(
              onPressed: () {},
              child: const Text(
                "Create Account",
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff005AC1),
                    fontFamily: "Recoleta"),
              )),
        ],
      ),
    );
  }
}
