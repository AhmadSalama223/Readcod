import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePicture extends StatelessWidget {
  String img;
  ProfilePicture({required this.img});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(top: 37.0),
      child: Container(
        width: size.width * 0.3623,
        height: size.height * 0.1657,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 42, right: 26, left: 14),
              child: SvgPicture.asset(img),
            ),
            const SizedBox(
              width: 80,
              child: Divider(
                height: 0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: size.width * 0.0724,
                  height: size.height * 0.0331,
                  decoration: BoxDecoration(
                    color: const Color(0xff575E71),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: const InkWell(child: Icon(Icons.add,color: Colors.white,)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
