import 'package:flutter/material.dart';

import '../../../../../core/Colors/Colors.dart';
import '../../../../../core/data/data.dart';

class ShoppingFrequency extends StatelessWidget {
  const ShoppingFrequency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.9,
      height: size.height * 0.5,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.8,
          crossAxisCount: 2,
          mainAxisSpacing: 18,
          crossAxisSpacing: 44,
        ),
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            width: size.width * 0.2,
            height: size.height * 0.4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 25.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, right: 8),
                    child: Text(
                      dataList[index]["text"],
                      style: TextStyle(
                          fontSize: 14,
                          color: danger,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Image.asset(
                      dataList[index]["image"],
                      scale: 0.95,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
