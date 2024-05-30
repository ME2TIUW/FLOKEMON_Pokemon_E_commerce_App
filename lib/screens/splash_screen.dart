import 'package:flutter/material.dart';
import 'package:mcc_lab_23dec23/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF21386E), Color(0Xff142242)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/splashscreen.png',
                width: 350,
                height: 350,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 10),
              const Text(
                'Flokemon',
                style: TextStyle(
                  color: Color.fromARGB(255, 253, 202, 0),
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pokemon',
                  letterSpacing: 3,
                  // foreground: Paint()
                  //   ..style = PaintingStyle.stroke
                  //   ..strokeWidth = 2
                  //   ..color = const Color(0xFF21386E),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Login()));
                },
                child: Image.asset(
                  'assets/pokeball.png',
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'By Group 5 -BB03',
                style: TextStyle(
                  color: Color.fromARGB(255, 253, 202, 0),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pokemon',
                  letterSpacing: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
