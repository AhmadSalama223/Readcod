import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class LogoAndProgressBar extends StatelessWidget {
  double percent;
  Color clr;
  String numberPage;
  String title;
  String description;

  LogoAndProgressBar({
    super.key,
    required this.percent,
    required this.clr,
    required this.numberPage,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
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
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  numberPage,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      fontFamily: "Recoleta"),
                ),
              ),
              const Text(
                "/7",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                    fontSize: 20,
                    fontFamily: "Recoleta"),
              ),
            ],
          ),
        ),
        LinearPercentIndicator(
          alignment: MainAxisAlignment.center,
          width: size.width * 0.9,
          lineHeight: size.height * 0.009,
          barRadius: const Radius.circular(20),
          percent: percent,
          progressColor: clr,
          // backgroundColor: SwitchIncomeExpenses?const Color(0xffF1F1FA):Colors.white,
          backgroundColor: Color(0xffF1F1FA),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Text(
            textAlign: TextAlign.center,
            title,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: SizedBox(
              width: 180,
              child: Text(textAlign: TextAlign.center,description,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff575E71)))),
        ),
      ],
    );
  }
}
