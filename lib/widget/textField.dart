import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final Widget? icons;
  final bool keyWord;
  // final Widget? title;
  final bool obSecure;

  const CustomTextField({
    Key? key,
    this.hintText,
    required this.keyWord,
    this.icons,
    this.labelText,
    required this.obSecure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        keyboardType: keyWord ? TextInputType.text : TextInputType.number,
        obscureText: obSecure,
        decoration: InputDecoration(
          prefixIcon: icons,
          border: InputBorder.none,
          hintText: hintText,
          labelText: labelText,

          // fillColor: Colors.red,
          // filled: true,
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Color(0xff00917C), width: 3)),

          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(25),
              borderSide: BorderSide(color: Color(0xff082032), width: 3)),
        ),
      ),
    );
  }
}
