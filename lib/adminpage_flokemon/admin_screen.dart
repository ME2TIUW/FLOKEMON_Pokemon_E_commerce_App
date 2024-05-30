import 'package:flutter/material.dart';
import 'package:mcc_lab_23dec23/adminpage_flokemon/addpokemon_admin.dart';
import 'package:mcc_lab_23dec23/screens/Profile.dart';
import 'package:mcc_lab_23dec23/screens/body_navigator.dart';
import 'package:mcc_lab_23dec23/screens/login_screen.dart';

class Adminhome extends StatefulWidget {
  final String token;
  const Adminhome({super.key, required this.token});

  @override
  State<Adminhome> createState() => _AdminhomeState();
}

class _AdminhomeState extends State<Adminhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffF7F7F9),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'Hello Admin',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: 'Pokemon',
                          fontSize: 28,
                          color: Color(0xffFFCB05)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0, left: 30.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Login()));
                        },
                        child: const Icon(
                          Icons.logout,
                          color: Color(0xFF21386E),
                          size: 35,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(00, 20, 0, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AddPokemon()));
                  },
                  child: Container(
                    width: 340,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        shape: BoxShape.rectangle,
                        color: const Color(0xff21386E)),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const AddPokemon()));
                          },
                          child: const Padding(
                            padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Text(
                              'Add Flokemon',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 26,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 35,
                        ),
                        const Image(
                          image: AssetImage('assets/Ditto.png'),
                          height: 70,
                          width: 70,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(00, 20, 0, 0),
                child: Container(
                  width: 340,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      shape: BoxShape.rectangle,
                      color: const Color(0xff21386E)),
                  child: const Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          'View Pokemon',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.bold,
                              fontSize: 26,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      Image(
                          image: AssetImage('assets/snorlax.png'),
                          width: 70,
                          height: 70)
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(00, 20, 0, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Profile(
                                  token: '',
                                )));
                  },
                  child: Container(
                    width: 340,
                    height: 80,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(19),
                        shape: BoxShape.rectangle,
                        color: const Color(0xff21386E)),
                    child: const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            'Delete Pokemon',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Image(image: AssetImage('assets/unown.png'))
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(00, 20, 0, 0),
                child: Container(
                  width: 280,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      shape: BoxShape.rectangle,
                      color: const Color(0xff21386E)),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const BodyNavigator(token: '')));
                        },
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            'Switch to client side menu',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                                fontSize: 13,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
