import 'package:craetacountlogin/features/creatAccount/widgets/logo_and_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../../core/Colors/Colors.dart';
import '../../../widgets/button.dart';
import '../components/profile_picture.dart';

class step_4 extends StatefulWidget {
  const step_4({Key? key}) : super(key: key);

  @override
  State<step_4> createState() => _Step_4State();
}

class _Step_4State extends State<step_4> {
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
                  percent: 0.1428*4,
                  clr: secondary,
                  numberPage: "4",
                  title: "Select Profile Picturer ?",
                  description:
                  "you can selected photo from one of presetor add your own photo",
                )),
            ProfilePicture(img: "assets/images/character.svg"),
           Button(topPadding: 60,),
          ],
        ),
      ),
    );
  }


}
