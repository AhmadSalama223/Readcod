import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../../core/Colors/Colors.dart';
import '../../../widgets/button.dart';
import '../../../widgets/input_field.dart';
import '../../../widgets/logo_and_progress_bar.dart';

class step_2 extends StatefulWidget {
  const step_2({Key? key}) : super(key: key);

  @override
  State<step_2> createState() => _step_2State();
}

class _step_2State extends State<step_2> {
  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    TextEditingController verification = TextEditingController();
    TextEditingController password = TextEditingController();
    TextEditingController passwordConfirm = TextEditingController();
    return Scaffold(
      backgroundColor: Color(0xffE7E8FE),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
            color: Color(0xffE7E8FE),
            image: DecorationImage(
                fit: BoxFit.contain,
                image: AssetImage("assets/images/background.png"))),
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: LogoAndProgressBar(
                  percent: 0.1428*2,
                  clr: secondary,
                  numberPage: "2",
                  title: "Verification",
                  description:
                  "Pleas enter your the code that we send to",
                )),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text("ahmadsalama@rightcode.io",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: secondary)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 31.0),
              child: Text("Resend the OTP in 5s",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: danger)),
            ),
            InputField(controller: verification ,hint: "verification"),
            InputField(controller: password,hint:  "password"),
            InputField(controller: passwordConfirm,hint: "passwordConfirm"),
          Button(topPadding: 13,),
          ],
        ),
      ),
    );
  }


}
