import 'dart:async';

import 'package:flutter/material.dart';
import 'package:yellwflck/Design/signin.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(Duration(seconds: 2), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => sign_in()));
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 70, right: 70, bottom: 150, top: 150),
          child: Container(
            child: Image.asset("asset/logo.png"),
          ),
        ),
      ),
    );
  }
}
