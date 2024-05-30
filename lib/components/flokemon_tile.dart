import 'package:flutter/material.dart';
import 'package:mcc_lab_23dec23/flokemons/flokemon.dart';

// ignore: must_be_immutable
class FlokemonTile extends StatelessWidget {
  Flokemon flokemon;
  FlokemonTile({super.key, required this.flokemon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        margin: const EdgeInsets.only(left: 25),
        height: 75,
        width: 150,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 213, 213, 213),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(children: [
          //flokemon pic
          ClipRect(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                0.0,
                15.0,
                0.0,
                0.0,
              ),
              child: Image.asset(
                flokemon.imagePath,
                width: 100,
                height: 100,
              ),
            ),
          ),
          const Text(
            'BEST -SELLER',
            style: TextStyle(
                color: Color(0xFF21386E),
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto'),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      flokemon.name,
                      style: const TextStyle(
                          fontWeight: FontWeight.w400,
                          fontFamily: 'Roboto',
                          fontSize: 16,
                          color: Color(0xFF21386E)),
                    ),
                    Text(
                      flokemon.price,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto',
                          fontSize: 18,
                          color: Color(0xFF21386E)),
                    ),
                  ],
                ),
              ),

              //plus button
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: Color(0xFF21386E),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    )),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
