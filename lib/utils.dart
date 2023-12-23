import 'package:flutter/material.dart';

// App colors
const background = Color(0xfff6fff7);
const white = Color(0xffffffff);
const black = Color(0xff000000);
const hint = Color.fromARGB(202, 181, 181, 181);
const green = Color(0xff00be9b);
const lightGreen = Color(0xffd0ffcf);
const lightBlack = Colors.black54;

// App images
class ImagePath {
  static String base = "assets/images/";

  static String arrow = "${base}Arrow_alt_lright.png";
  static String arrowdown = "${base}Expand_down.png";
}

// App texts
// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  String text;
  Color color;
  double size;
  String family;
  FontWeight weight;

  CustomText(this.text, this.color, this.size, this.family, this.weight,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color, fontSize: size, fontWeight: weight, fontFamily: family),
    );
  }
}
