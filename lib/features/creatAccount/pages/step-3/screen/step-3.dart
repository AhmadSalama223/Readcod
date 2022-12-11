import 'package:craetacountlogin/features/creatAccount/widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../../core/Colors/Colors.dart';
import '../../../widgets/logo_and_progress_bar.dart';
import '../components/gender.dart';

class step_3 extends StatefulWidget {
  const step_3({Key? key}) : super(key: key);

  @override
  State<step_3> createState() => _step_3State();
}

class _step_3State extends State<step_3> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffE7E8FE),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0xffE7E8FE),
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage("assets/images/background.png"),
          ),
        ),
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: LogoAndProgressBar(
                  percent: 0.1428*3,
                  clr: secondary,
                  numberPage: "3",
                  title: "What is your gender ?",
                  description:
                  "To give you a better experience we need to know your gender",
                )),
            const Gender(),
            Button(topPadding: 23,),
          ],
        ),
      ),
    );
  }

}
