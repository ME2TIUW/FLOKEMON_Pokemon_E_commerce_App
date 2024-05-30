// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:mcc_lab_23dec23/flokemons/flokemon.dart';
import 'package:mcc_lab_23dec23/screens/body_navigator.dart';
import '../screens/shopping_cart.dart';
import 'DetailsCelebi.dart';
import 'DetailsPikachu.dart';
import 'DetailsSnorlax.dart';
import 'DetailsUnown.dart';
import 'cart.dart';

class DetailsDitto extends StatefulWidget {
  const DetailsDitto({super.key});

  @override
  State<DetailsDitto> createState() => DetailsDittoState();
}

class DetailsDittoState extends State<DetailsDitto> {
  bool isTapped = false;
  final Cart shoppingCart = Cart();

  final Flokemon ditto = Flokemon(
    name: 'Ditto',
    description: 'Normal - male',
    price: '25.00',
    imagePath: 'assets/ditto.png',
  );

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
                    'Ditto',
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
                    '\$25.00',
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
                image: AssetImage('assets/Ditto.png'),
                width: 200,
                height: 250,
              ),
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
                  Container(
                    width: 51,
                    height: 53.5,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/Ditto.png')),
                        shape: BoxShape.rectangle,
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                            color: const Color(0xff21386E), width: 3)),
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
                    child: Container(
                      width: 51,
                      height: 53.5,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage('assets/snorlax.png')),
                          shape: BoxShape.rectangle,
                          color: const Color(0xffFFFFFF),
                          borderRadius: BorderRadius.circular(16)),
                    ),
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
                'A ShapeShifting normal type Purple Jelly That Can transform into many other forms of flokemons, what a charm!',
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
                    child: GestureDetector(
                      onTap: () {
                        // setState(() {
                        //   shoppingCart.items.add(ditto);
                        //   // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>UserCart(cartItems: shoppingCart.items)));
                        // });
                      },
                      child: GestureDetector(
                        onTap: () {
                          Flokemon flokemon = Flokemon(
                            description: ditto.description,
                            name: ditto.name,
                            imagePath: ditto.imagePath,
                            price: ditto.price.toString(),
                          );
                          setState(() {
                            shoppingCart.addFlokemonToCart(
                                flokemon); // Add the flokemon to the cart
                            Navigator.push(
                              // Navigate to the cart page
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ShoppingCartPage(), // Replace with your cart page
                              ),
                            );
                          });
                        },
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
