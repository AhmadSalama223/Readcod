import 'package:craetacountlogin/features/creatAccount/widgets/logo_and_progress_bar.dart';
import 'package:flutter/material.dart';

import '../../../../../core/Colors/Colors.dart';
import '../../../widgets/button.dart';
import '../../../widgets/input_field.dart';

class Step_1 extends StatefulWidget {
  const Step_1({Key? key}) : super(key: key);

  @override
  State<Step_1> createState() => _Step_1State();
}

class _Step_1State extends State<Step_1> {
  @override
  Widget build(BuildContext context) {
    TextEditingController Name = TextEditingController();
    TextEditingController Surname = TextEditingController();
    TextEditingController Email = TextEditingController();
    TextEditingController Birthdate = TextEditingController();
    TextEditingController City = TextEditingController();
    TextEditingController District = TextEditingController();
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffE7E8FE),
      body: SingleChildScrollView(
        child: Container(
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
              // Logo


              Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: LogoAndProgressBar(
                    percent: 0.1428,
                    clr: secondary,
                    numberPage: "1",
                    title: "Registration",
                    description:
                        "Pleas enter your information then we will send OTP to verify",
                  )),

              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: InputField(controller: Name,hint: "Name"),
              ),
              InputField(controller: Surname, hint: "Surname"),
              InputField(controller: Email, hint: "Email"),
              InputField(controller: Birthdate, hint: "Birthdate"),
              InputField(controller: City, hint: "City"),
              InputField(controller: District, hint: "District"),
              Button(topPadding: 13,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Already have account?",
                    style: TextStyle(
                        color: Color(0xff575E71),
                        fontWeight: FontWeight.w500,
                        fontFamily: "Recoleta"),
                  ),
                  Text(
                    "Login",
                    style: TextStyle(
                        color: Color(0XFF715573),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Recoleta",
                        fontSize: 15),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

}
