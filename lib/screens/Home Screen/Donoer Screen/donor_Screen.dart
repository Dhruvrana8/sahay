import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sahay/screens/Home%20Screen/Donoer%20Screen/donoate_screen.dart';
import 'package:sahay/screens/Home%20Screen/Donoer%20Screen/donor_message_screen.dart';
import 'package:sahay/screens/Home%20Screen/Donoer%20Screen/donor_profile_screen.dart';
import 'package:sahay/screens/Home%20Screen/Donoer%20Screen/map_screen.dart';

class DonorHomeScreen extends StatefulWidget {
  const DonorHomeScreen({Key? key}) : super(key: key);

  @override
  State<DonorHomeScreen> createState() => _DonorHomeScreenState();
}

class _DonorHomeScreenState extends State<DonorHomeScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    DonorMapScreen(),
    DonorDonateScreen(),
    DonorMessageScreen(),
    DonorProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.add),
            label: "Doner",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: "Mesages",
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_alt),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
