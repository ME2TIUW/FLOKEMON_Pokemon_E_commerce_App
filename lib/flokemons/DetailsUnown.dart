// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../screens/body_navigator.dart';
import 'DetailsSnorlax.dart';
import 'DetailsCelebi.dart';
import 'DetailsDitto.dart';
import 'DetailsPikachu.dart';

class DetailsUnown extends StatefulWidget {
  const DetailsUnown({super.key});

  @override
  State<DetailsUnown> createState() => _DetailsUnownState();
}

class _DetailsUnownState extends State<DetailsUnown> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F9),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 50, 0, 0),
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
                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Text(
                    'Unown',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF21386E)),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text(
                    'Electric - Male',
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
                  padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text(
                    '\$10.00',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Image.network(
                'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/201.png',
                width: 200,
                height: 250,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Row(
                children: [
                  //Pikachu
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
                              image: NetworkImage(
                                  'https://assets.pokemon.com/assets/cms2/img/pokedex/full/025.png')),
                          shape: BoxShape.rectangle,
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  ),

                  const SizedBox(
                    width: 20,
                  ),

                  //ditto
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailsDitto()));
                    },
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailsDitto()),
                        );
                      },
                      child: Container(
                        width: 51,
                        height: 53.5,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://assets.pokemon.com/assets/cms2/img/pokedex/full/132.png')),
                            shape: BoxShape.rectangle,
                            color: const Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(16)),
                      ),
                    ),
                  ),

                  const SizedBox(
                    width: 20,
                  ),

                  //Snorlax
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DetailsSnorlax()));
                    },
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DetailsSnorlax()));
                      },
                      child: Container(
                        width: 51,
                        height: 53.5,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: NetworkImage(
                                    'https://assets.pokemon.com/assets/cms2/img/pokedex/full/143.png')),
                            shape: BoxShape.rectangle,
                            color: const Color(0xffFFFFFF),
                            borderRadius: BorderRadius.circular(16)),
                      ),
                    ),
                  ),

                  const SizedBox(
                    width: 20,
                  ),

                  //unown
                  Container(
                    width: 51,
                    height: 53.5,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: NetworkImage(
                                'https://assets.pokemon.com/assets/cms2/img/pokedex/detail/201.png')),
                        shape: BoxShape.rectangle,
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                            color: const Color(0xff21386E), width: 3)),
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
                              image: NetworkImage(
                                  'https://assets.pokemon.com/assets/cms2/img/pokedex/full/251.png')),
                          shape: BoxShape.rectangle,
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(16)),
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 250, 40),
              child: Text(
                'it’s.. unown..',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
            ),
            // const Padding(
            //   padding: EdgeInsets.fromLTRB(250, 20, 0, 0),
            //   child: Text(
            //     'Read More',
            //     textAlign: TextAlign.right,
            //     style: TextStyle(
            //         fontFamily: 'Poppins',
            //         fontSize: 14,
            //         fontWeight: FontWeight.bold,
            //         color: Color(0xff21386E)),
            //   ),
            // ),
            const SizedBox(
              height: 65,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 60, 0, 0),
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
                  GestureDetector(
                    onTap: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context)=>UserCart()));
                    },
                    child: Container(
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
