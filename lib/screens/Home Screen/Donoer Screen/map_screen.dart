import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../widgets/google_map.dart';

class DonorMapScreen extends StatelessWidget {
  const DonorMapScreen({Key? key}) : super(key: key);

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
