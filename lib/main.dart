import 'package:flutter/material.dart';
import 'package:sahay/screens/Home%20Screen/Donoer%20Screen/donor_Screen.dart';
import 'package:sahay/screens/Home%20Screen/Ngo%20Home%20screen/nog_home_screen.dart';
import 'package:sahay/screens/Splash%20Screen/splash_screen.dart';
// import 'package:sahay/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sahay App',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      routes: {
        "/": (context) => const SplashScreen(),
        "/ngo_homescreen": (context) => const NgoHomeScreen(),
        "/donor_homescreen": (context) => const DonorHomeScreen(),
      },
    );
  }
}
