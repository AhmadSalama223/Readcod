import 'features/creatAccount/pages/login/screen/login.dart';
import 'features/creatAccount/pages/step-7/screen/step-7.dart';
import 'package:flutter/material.dart';

import 'features/creatAccount/pages/Step-1/screen/step-1.dart';
import 'features/creatAccount/pages/step-2/screen/step-2.dart';
import 'features/creatAccount/pages/step-3/screen/step-3.dart';
import 'features/creatAccount/pages/step-4/screen/step-4.dart';
import 'features/creatAccount/pages/step-5/screen/step-5.dart';
import 'features/creatAccount/pages/step-6/screen/step-6.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:login(),
    );
  }


}
