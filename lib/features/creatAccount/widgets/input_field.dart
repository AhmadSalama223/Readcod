import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  String hint;
  TextEditingController controller;
   InputField({required this.hint,required this.controller});

  @override
  Widget build(BuildContext context) {
    var size= MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20, top: 15),
      child: Container(
        height: size.height * 0.0685,
        child: TextField(
          style: const TextStyle(fontSize: 25),
          decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              hintText: hint,
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15)),
              hintStyle: const TextStyle(fontSize: 20)),
          controller: controller,
          autofocus: false,
        ),
      ),
    );
  }
}
