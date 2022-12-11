import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/Colors/Colors.dart';

class ItemsKitchen extends StatelessWidget {
  String CategorFyruits;
  String img;
  ItemsKitchen({required this.img,required this.CategorFyruits});
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        width: size.width * 0.8,
        height: size.height * 0.0685,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 14.0),
          child: Row(
            children: [
              SvgPicture.asset(
                img,
                color: secondary,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 28.0),
                child: Text(
                  CategorFyruits,
                  style: TextStyle(
                      fontWeight: FontWeight.w400, fontSize: 18, color: danger),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
