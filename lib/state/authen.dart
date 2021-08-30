import 'package:flutter/material.dart';
import 'package:flutter_application_2/utility/mystyle.dart';

class Authen extends StatefulWidget {
  const Authen({Key? key}) : super(key: key);

  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  late double screen;
  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;

    return Scaffold(
        body: Center(
      child: Column(
        children: [
          showLogo(),
          Mystyle().titleH1('My Iot App'),
          buildUser(),
          buildPassword(),
        ],
      ),
    ));
  }

  Container buildUser() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.6,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.perm_identity,
            color: Mystyle().darkColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Mystyle().darkColor),
          ),
          labelStyle: TextStyle(color: Mystyle().darkColor),
          labelText: 'User :',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Mystyle().lightdarkColor),
          ),
        ),
      ),
    );
  }

  Container buildPassword() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.6,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock_outline,
            color: Mystyle().darkColor,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Mystyle().darkColor),
          ),
          labelStyle: TextStyle(color: Mystyle().darkColor),
          labelText: 'Password :',
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Mystyle().lightdarkColor),
          ),
        ),
      ),
    );
  }

  Container showLogo() {
    return Container(
      //margin: EdgeInsets.only(top: 10),
      width: screen * 0.4,
      child: Center(child: Mystyle().showLogo()),
    );
  }
}
