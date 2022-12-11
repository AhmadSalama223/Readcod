import 'package:flutter/material.dart';

import '../../../../../core/Colors/Colors.dart';
import '../../../widgets/button.dart';
import '../components/logo_and_txt.dart';
import '../components/resets_password_creat_acount_txt.dart';


class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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
          children:  [
           const LogoAndTxt(),
            Button(topPadding: 13),
           const ResetsPasswordCreatAcountTxt()
          ],
        ),
      ),
    );
  }

}
