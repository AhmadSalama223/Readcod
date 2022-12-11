import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../../core/Colors/Colors.dart';
import '../../../widgets/button.dart';
import '../../../widgets/logo_and_progress_bar.dart';
import '../components/how_many_days.dart';
import '../components/oclock.dart';

class step_7 extends StatefulWidget {
  const step_7({Key? key}) : super(key: key);

  @override
  State<step_7> createState() => _step_7State();
}

class _step_7State extends State<step_7> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color(0xffE7E8FE),
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
                  percent: 0.1428*7,
                  clr: secondary,
                  numberPage: "7",
                  title: "How many days before the expiration data should we alert you  ",
                  description:
                  "",
                )),
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: HowManyDays(txt: "One Week"),
            ),
            const Oclock(),
            Button(topPadding: 36,),
          ],
        ),
      ),
    );
  }

}
