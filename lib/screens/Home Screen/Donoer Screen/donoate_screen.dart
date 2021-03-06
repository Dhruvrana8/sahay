import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DonorDonateScreen extends StatefulWidget {
  const DonorDonateScreen({Key? key}) : super(key: key);

  @override
  State<DonorDonateScreen> createState() => _DonorDonateScreenState();
}

class _DonorDonateScreenState extends State<DonorDonateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Donate"),
        backgroundColor: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "What do you want to donate?",
                style: TextStyle(
                  color: Color(0xffFBBC04),
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/camera_screen");
              },
              child: const ListTile(
                leading: Icon(Icons.fastfood),
                title: Text(
                  "Food",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            GestureDetector(
              child: const ListTile(
                leading: Icon(CupertinoIcons.shopping_cart),
                title: Text(
                  "Clothes",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const ListTile(
                leading: Icon(CupertinoIcons.book),
                title: Text(
                  "Stationary",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
