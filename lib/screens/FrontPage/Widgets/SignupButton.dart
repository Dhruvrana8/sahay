import 'package:flutter/material.dart';

class SignUpButtonFrontPage extends StatelessWidget {
  final Color? BoxColor;
  final Color? TextColor;
  final Color? BoxDorderColour;
  final String SingupText;
  final String NavigationString;
  const SignUpButtonFrontPage({
    Key? key,
    this.BoxColor,
    this.BoxDorderColour,
    required this.SingupText,
    required this.NavigationString,
    this.TextColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, NavigationString);
      },
      child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(
          color: BoxColor ?? Colors.white,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: BoxDorderColour ?? Colors.white,
          ),
        ),
        child: Center(
          child: Text(
            SingupText,
            style: TextStyle(
              fontSize: 20,
              color: TextColor ?? Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
