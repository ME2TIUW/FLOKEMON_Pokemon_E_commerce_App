// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../screens/body_navigator.dart';
import 'DetailsCelebi.dart';
import 'DetailsUnown.dart';
import 'DetailsDitto.dart';
import 'DetailsPikachu.dart';

class DetailsSnorlax extends StatefulWidget {
  const DetailsSnorlax({super.key});

  @override
  State<DetailsSnorlax> createState() => _DetailsSnorlaxState();
}

class _DetailsSnorlaxState extends State<DetailsSnorlax> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F9),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const BodyNavigator(
                                    token: '',
                                  )));
                    },
                    child: Container(
                      width: 44,
                      height: 44,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xff21386E)),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 285,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>UserCart()));
                    },
                    child: Container(
                      width: 44,
                      height: 44,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xff21386E)),
                      child: const Icon(
                        Icons.shopping_bag,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text(
                    'Snorlax',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(
                    'Normal - Male',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Text(
                    '\$30.00',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF21386E)),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Image(
                  image: AssetImage('assets/snorlax.png'),
                  height: 300,
                  width: 300),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Row(
                children: [
                  //pikachu
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailsPikachu()));
                    },
                    child: Container(
                      width: 51,
                      height: 53.5,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/pikachu.png')),
                          shape: BoxShape.rectangle,
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ),

                  const SizedBox(
                    width: 20,
                  ),

                  //Ditto
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailsDitto()));
                    },
                    child: Container(
                      width: 51,
                      height: 53.5,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/Ditto.png')),
                          shape: BoxShape.rectangle,
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ),

                  const SizedBox(
                    width: 20,
                  ),

                  Container(
                    width: 51,
                    height: 53.5,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/snorlax.png')),
                        shape: BoxShape.rectangle,
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                            color: const Color(0xff21386E), width: 3)),
                  ),

                  const SizedBox(
                    width: 20,
                  ),

                  //Unown
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailsUnown()));
                    },
                    child: Container(
                      width: 51,
                      height: 53.5,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/unown.png')),
                          shape: BoxShape.rectangle,
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ),

                  const SizedBox(
                    width: 20,
                  ),

                  //Celebi
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailsCelebi()));
                    },
                    child: Container(
                      width: 51,
                      height: 53.5,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/Celebi.webp')),
                          shape: BoxShape.rectangle,
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: Text(
                'Your sleepy gentle giant that could never seem to wake up! you might need to shake him...',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(250, 20, 0, 0),
              child: Text(
                'Read More',
                textAlign: TextAlign.right,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff21386E)),
              ),
            ),
            const SizedBox(
              height: 85,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
              child: Row(
                children: [
                  Container(
                    width: 52,
                    height: 52,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xffD9D9D9)),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          // Toggle the tapped state
                          isTapped = !isTapped;
                        });
                      },
                      child: Icon(
                        isTapped ? Icons.favorite : Icons.favorite_border,
                        color: isTapped ? Colors.red : Colors.black54,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 75,
                  ),
                  Container(
                    width: 250,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: const Color(0xff21386E),
                        borderRadius: BorderRadius.circular(19)),
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.shopping_bag,
                            color: Colors.white,
                          ),
                          Text(
                            '    Add To Cart',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
