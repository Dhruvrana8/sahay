// @dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahay/donorSignup/donorSignup1.dart';
import 'package:sahay/ngoLogin/ngoLogin1.dart';
import 'package:sahay/ngoLogin/ngoLogin2.dart';
import 'package:sahay/ngosignup/ngoSignup1.dart';
import 'donorSignup/donorSignup1.dart';
import 'donorlogin/donorLogin1.dart';
import 'package:sahay/frontpage/frontpage1.dart';
import 'package:sahay/feedback/donor feedback.dart';


void main() => runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.yellow),
      home: donorLogin1(),
    );
  }
}


