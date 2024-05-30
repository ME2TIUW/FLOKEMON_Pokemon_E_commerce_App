import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:mcc_lab_23dec23/screens/Profile.dart';
import 'package:mcc_lab_23dec23/screens/settings_screen.dart';
import 'home_screen.dart';

class BodyNavigator extends StatefulWidget {
  final String token;
  const BodyNavigator({Key? key, required this.token}) : super(key: key);

  @override
  State<BodyNavigator> createState() => _BodyNavigatorState();
}

class _BodyNavigatorState extends State<BodyNavigator> {
  int index = 1;
  final screen = [
    const Settings(),
    const HomeScreen(token: ''),
    const Profile(
      token: "",
    )
  ];
  final items = const [
    Icon(
      Icons.settings,
      color: Colors.white,
    ),
    Padding(
      padding: EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 15.0),
      child: Image(
        image: AssetImage('assets/pokeball.png'),
        height: 75,
        width: 75,
      ),
    ),
    Icon(
      Icons.person,
      color: Colors.white,
    )
  ];
  @override
  Widget build(BuildContext context) {
    screen[1] = HomeScreen(token: widget.token);
    return Scaffold(
      body: screen[index],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: const Color(0xFF21386E),
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) => setState(() {
          this.index = index;
        }),
        items: items,
        index: index,
      ),
    );
  }
}
