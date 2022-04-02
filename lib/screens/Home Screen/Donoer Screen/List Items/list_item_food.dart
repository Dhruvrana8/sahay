import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListItemFood extends StatelessWidget {
  const ListItemFood({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: const Icon(Icons.cancel),
        title: const Text(
          "List Item",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Row(
              children: const [
                Icon(
                  Icons.check_circle,
                  color: Color(0xffFBBC04),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Photo(s)"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 80,
                  width: 80,
                  color: Colors.black,
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Divider(),
            const Text(
              "Title your item:",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Eg: Vegitable , cake, preserved',
              ),
            ),
            const Positioned(
              right: 0,
              child: Text("50 character"),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Description ",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              child: const TextField(
                maxLines: 24,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText:
                      'Eg: Tammato from The Garden\nGive as much as possible increase your\n chances of giving your object quick.',
                ),
              ),
            ),
            const Positioned(
              right: 0,
              child: Text("200 character"),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Daytime on Week",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Icon(CupertinoIcons.right_chevron),
              ],
            ),
            const Divider(),
            const Text(
              "Best Before",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Expiration Date',
                isDense: true,
                contentPadding: EdgeInsets.all(8),
              ),
            ),
            const Divider(),
            Row(
              children: const [
                Icon(
                  Icons.restaurant,
                  size: 20,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Food",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Divider(),
            const Text(
              "Best Before",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: const TextField(
                maxLines: 12,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Agara City Mall,Pitam Pura Delhi.',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: const Color(0xffFBBC04),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "Post",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
