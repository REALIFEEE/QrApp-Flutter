import 'dart:async';

import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 4),
        () => Navigator.pushReplacementNamed(context, "/name"));
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Text(
          'QRR',
          style: TextStyle(
              fontFamily: 'BlackOps', fontSize: 50.0, color: Colors.white),
        ),
      ),
    );
  }
}
