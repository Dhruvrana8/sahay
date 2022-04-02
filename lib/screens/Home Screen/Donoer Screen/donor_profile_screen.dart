import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/profile_info.dart';

class DonorProfileScreen extends StatelessWidget {
  const DonorProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              border: Border.all(),
            ),
            child: const Icon(
              CupertinoIcons.person_fill,
              color: Colors.grey,
              size: 58,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "OLD guys house NGO",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "oldguyshousengo@gmail.com ~",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const ProfileInfo(
            hint: "NAME",
            mainText: "Sneha Ahuja",
          ),
          const ProfileInfo(hint: "Mobile Number", mainText: "123456789"),
          const ProfileInfo(
              hint: "Address",
              mainText: "Aggarwal City Mall,\nPitam Pura. Delhi"),
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Check your booked items",
            style: TextStyle(
              fontSize: 20,
              color: Color.fromRGBO(251, 188, 4, 1),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "/feedback/donor_feedback");
            },
            child: const Text(
              "Send Feedback!",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromRGBO(251, 188, 4, 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
