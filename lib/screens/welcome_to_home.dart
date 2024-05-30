import 'package:flutter/material.dart';

import 'body_navigator.dart';

class WelcomeHome extends StatelessWidget {
  final String token;
  const WelcomeHome({Key? key, required this.token}) : super(key: key);

  void userNext() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFCFC),
      body: SafeArea(
          child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome to Home',
                style: TextStyle(
                    color: Color(0xFF21386E),
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 42),
              ),
              const SizedBox(
                height: 100,
              ),
              const Image(
                image: AssetImage('assets/snorlax.png'),
                height: 200,
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(25.0, 18.0, 0.0, 0.0),
                child: Text(
                  'Currently, The Next Part of Home Activity & Fragmentation is under development. The upcoming Part Will Be Coming Soon!',
                  style: TextStyle(
                      color: Colors.black, fontFamily: 'Roboto', fontSize: 18),
                ),
              ),
              const SizedBox(
                height: 250,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.fromLTRB(162.0, 20.0, 162.0, 20.0),
                    backgroundColor: const Color(0xFF21386E)),
                onPressed: () {
                  print(token);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BodyNavigator(token: token)));
                },
                child: const Text(
                  'Next > ',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
