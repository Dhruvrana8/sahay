import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  final String hint;
  final String mainText;
  const ProfileInfo({
    Key? key,
    required this.hint,
    required this.mainText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            hint,
            style: const TextStyle(
              fontSize: 10,
              color: Colors.grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                mainText,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const Text(
                "Edit",
                style: TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          const Divider(
            color: Colors.grey,
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
