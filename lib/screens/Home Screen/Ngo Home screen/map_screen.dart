import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sahay/widgets/google_map.dart';

class NgoMapScreen extends StatelessWidget {
  const NgoMapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: SvgPicture.asset(
          "assets/Logo files/SVG/yellow logo.svg",
          height: 100,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search),
          ),
        ],
      ),
      body: GoogleMapWidget(),
    );
  }
}
