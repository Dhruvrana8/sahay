import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sahay/screens/Home%20Screen/Ngo%20Home%20screen/map_screen.dart';
import 'package:sahay/screens/Home%20Screen/Ngo%20Home%20screen/message_screen.dart';
import 'package:sahay/screens/Home%20Screen/Ngo%20Home%20screen/profile_screen.dart';

class NgoHomeScreen extends StatefulWidget {
  const NgoHomeScreen({Key? key}) : super(key: key);

  @override
  State<NgoHomeScreen> createState() => _NgoHomeScreenState();
}

class _NgoHomeScreenState extends State<NgoHomeScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static const List<Widget> _widgetOptions = <Widget>[
    NgoMapScreen(),
    NgoMessageScreen(),
    NgoProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: "Home",
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
