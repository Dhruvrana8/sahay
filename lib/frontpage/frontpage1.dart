import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_svg/flutter_svg.dart';


class frontpage extends StatefulWidget {

  @override
  _frontpageState createState() => _frontpageState();
}

class _frontpageState extends State<frontpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SafeArea(
              child: Column(
                  children: [SizedBox(
                  height:400.0,
                    width: double.infinity,
                    child: Carousel(
                      //dotSize:7.0,
                      //dotSpacing: 15.0,
                      dotColor:  Colors.white,
                      dotBgColor: Colors.white,
                      //dotVerticalPadding: 200.0,
                      //dotPosition: DotPosition.bottomCenter,
                      autoplay: true,
                      animationCurve: Curves.ease,
                    images:[
                  Container(
                    decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image:   DecorationImage(
                   image: SvgPicture.asset("assets/images/sc1 with logo.svg")as ImageProvider,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image:  const DecorationImage(
                    image: AssetImage('assets/images/sc2.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: const DecorationImage(
                    image: AssetImage('assets/images/sc3.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              ],),
                ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.red,
            height: 200,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Material(
                  elevation: 5.0,
                  color: const  Color(0xffFBBC04),
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    onPressed: () {
                      //Navigator.push(context,
                      // MaterialPageRoute(builder: (context)=>LoginScreen()),
                      //);
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: const Text(
                      'Sign up as a Donor',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Material(
                  elevation: 5.0,
                  color:  const Color(0xffFBBC04),
                  borderRadius: BorderRadius.circular(30.0),
                  child: MaterialButton(
                    onPressed: () {
                      //Navigator.push(context,
                      // MaterialPageRoute(builder: (context)=>LoginScreen()),
                      //);
                    },
                    minWidth: 200.0,
                    height: 42.0,
                    child: const Text(
                      'Sign up as an NGO',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
