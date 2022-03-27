import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NgoMessageScreen extends StatelessWidget {
  const NgoMessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        title: const Text(
          "Messages",
          style: TextStyle(
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          GestureDetector(
            onTap: () {},
            child: ListTile(
              leading: CircleAvatar(
                child: SvgPicture.asset(
                  "assets/Icons/SVG/yellow filled circle.svg",
                  height: 40,
                ),
              ),
              title: const Text(
                "Vegetables from my garden",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: const Text(
                ">",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            endIndent: 20,
            indent: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: ListTile(
              leading: CircleAvatar(
                child: SvgPicture.asset(
                  "assets/Icons/SVG/yellow filled circle.svg",
                  height: 40,
                ),
              ),
              title: const Text(
                "Four Blue Jeans",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: const Text(
                ">",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            endIndent: 20,
            indent: 20,
          ),
          GestureDetector(
            onTap: () {},
            child: ListTile(
              leading: CircleAvatar(
                child: SvgPicture.asset(
                  "assets/Icons/SVG/yellow filled circle.svg",
                  height: 40,
                ),
              ),
              title: const Text(
                "Story bgooks for kids",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: const Text(
                ">",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            endIndent: 20,
            indent: 20,
          ),
        ],
      ),
    );
  }
}
