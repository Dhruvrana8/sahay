import 'package:flutter/material.dart';
import 'package:sahay/screens/FrontPage/Widgets/SignupButton.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.vertical(
                bottom:
                    Radius.elliptical(MediaQuery.of(context).size.width, 100.0),
              ),
            ),
            child: Image.asset(
              "assets/Startup screen images/PNG/sc1(Croped).png",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Expanded(
              child: Column(
                children: const [
                  SignUpButtonFrontPage(
                    SingupText: "Sign up as a Donor",
                    NavigationString: "/donor_login/donorlogin1",
                    BoxColor: Color.fromRGBO(251, 188, 4, 1),
                  ),
                  SizedBox(height: 20),
                  SignUpButtonFrontPage(
                    SingupText: "Sign up as an NGO",
                    NavigationString: "/ngo_login/ngologin1",
                    BoxDorderColour: Color.fromRGBO(251, 188, 4, 1),
                    TextColor: Color.fromRGBO(251, 188, 4, 1),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
