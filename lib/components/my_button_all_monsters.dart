import 'package:flutter/material.dart';
import 'package:mcc_lab_23dec23/screens/home_screen.dart';

class MyButtonAllMonsters extends StatelessWidget {
  final Function()? onTap;
  const MyButtonAllMonsters({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const HomeScreen(token: '')));
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 241, 241, 241),
            borderRadius: BorderRadius.circular(8)),
        child: const Center(
          child: Text(
            "All Monsters",
            style: TextStyle(
                color: Color(0xFF21386E),
                fontWeight: FontWeight.w700,
                fontSize: 18),
          ),
        ),
      ),
    );
  }
}
