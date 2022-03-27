import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, "/donor_homescreen");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(251, 188, 4, 1),
      ),
      child: Center(
        child: SvgPicture.asset(
          "assets/Logo files/SVG/yellow bg logo.svg",
        ),
      ),
    );
  }
}
