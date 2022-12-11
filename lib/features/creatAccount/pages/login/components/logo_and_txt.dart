import 'package:flutter/material.dart';

import '../../../../../core/Colors/Colors.dart';
import '../../../widgets/input_field.dart';

class LogoAndTxt extends StatelessWidget {
  const LogoAndTxt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Column(children: [
      const Padding(
        padding: EdgeInsets.only(top: 24.0),
        child: Text(
          "logo",
          style: TextStyle(
              fontSize: 96,
              fontWeight: FontWeight.w700,
              fontFamily: "IbarraRealNova"),
        ),
      ),
      const Padding(
        padding: EdgeInsets.only(top: 58.0),
        child: Text(
          "Login ",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: Column(
          children: [
            Text(
              textAlign: TextAlign.center,
              " Please enter your email or phone number and password, ",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color:
                danger,
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              "  you can reset your password",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: danger,
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              "we will send you reset instruction to your email",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: danger,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 45.0),
              child: InputField(controller: email, hint: "Email"),
            ),
            InputField(controller: password, hint: "Password"),
          ],
        ),
      ),
    ],);
  }
}
