import 'dart:async';

import 'package:flutter/material.dart';
import 'package:citra/theme.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState

    Timer(
      Duration(seconds: 3),
      () => Navigator.pushNamed(context, '/sign-in'),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor1,
      body: Center(
        child: Container(
          width: 144,
          height: 193,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image_splash.png'))),
        ),
      ),
    );
  }
}
