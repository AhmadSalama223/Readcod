import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../../core/Colors/Colors.dart';
import '../../../widgets/button.dart';
import '../../../widgets/logo_and_progress_bar.dart';
import '../components/items_kitchen.dart';

class step_6 extends StatefulWidget {
  const step_6({Key? key}) : super(key: key);

  @override
  State<step_6> createState() => _step_6State();
}

class _step_6State extends State<step_6> {
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
                  percent: 0.1428*6,
                  clr: secondary,
                  numberPage: "6",
                  title: "Which items spoil your kitchen",
                  description:
                  "How many time you go shopping",
                ),),
            Padding(
              padding: const EdgeInsets.only(top: 14.0),
              child: ItemsKitchen(CategorFyruits:
                  "Groceries(fruit , vegetables )", img: "assets/images/fruit.svg"),
            ),
            ItemsKitchen(CategorFyruits: "   Dairy products (milk , cheese etc.)",
                img: "assets/images/milk.svg"),
            ItemsKitchen(CategorFyruits:
                "Meat products (poultry fish etc.)",img:  "assets/images/meat.svg"),
            Button(topPadding: 24,),
          ],
        ),
      ),
    );
  }



}
