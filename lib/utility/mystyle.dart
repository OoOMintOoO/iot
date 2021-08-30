import 'package:flutter/material.dart';

class Mystyle {
  Color darkColor = Color(0xff0085c1);
  Color primarydarkColor = Color(0xff28b5f4);
  Color lightdarkColor = Color(0xff72e7ff);

  Widget titleH1(String string) => Text(
        string,
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.bold, color: darkColor),
      );
  Widget showLogo() => Image(image: AssetImage('images/logo.png'));

  Mystyle();
}
