import 'package:craetacountlogin/features/creatAccount/pages/step-5/components/shopping_frequency.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../../core/Colors/Colors.dart';
import '../../../../../core/data/data.dart';
import '../../../widgets/button.dart';
import '../../../widgets/logo_and_progress_bar.dart';

class step_5 extends StatefulWidget {
  const step_5({Key? key}) : super(key: key);

  @override
  State<step_5> createState() => _step_5State();
}

class _step_5State extends State<step_5> {
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
                  percent: 0.1428 * 5,
                  clr: secondary,
                  numberPage: "5",
                  title: "Shopping Frequency",
                  description: "How many time you go shopping",
                )),
            const ShoppingFrequency(),
           Button(topPadding: 30,),
          ],
        ),
      ),
    );
  }
}
