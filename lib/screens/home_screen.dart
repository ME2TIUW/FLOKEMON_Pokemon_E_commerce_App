import 'package:flutter/material.dart';
import 'package:mcc_lab_23dec23/flokemons/DetailsCelebi.dart';
import 'package:mcc_lab_23dec23/flokemons/DetailsDitto.dart';
import 'package:mcc_lab_23dec23/flokemons/DetailsPikachu.dart';
import 'package:mcc_lab_23dec23/flokemons/DetailsSnorlax.dart';
import 'package:mcc_lab_23dec23/flokemons/DetailsUnown.dart';
import 'package:mcc_lab_23dec23/screens/Profile.dart';
import 'package:mcc_lab_23dec23/screens/login_screen.dart';
import 'package:mcc_lab_23dec23/screens/new_arrival_screen.dart';
import 'package:mcc_lab_23dec23/screens/search_Page.dart';
import 'package:mcc_lab_23dec23/screens/settings_screen.dart';
import 'package:provider/provider.dart';
import '../components/flokemon_tile.dart';
import '../flokemons/cart.dart';
import 'package:http/http.dart' as http;
import '../flokemons/flokemon.dart';

class HomeScreen extends StatefulWidget {
  final String? token;
  const HomeScreen({super.key, required this.token});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> signOut() async {
    //error handling
    print('token before signing-out ${widget.token}');
    try {
      final response = await http.post(
        Uri.parse(
            'http://10.0.2.2:8080/logout'), // Replace with your backend logout endpoint
        headers: {
          'Authorization':
              'Bearer ${widget.token}', // Include the user's token in the header
        },
      );

      if (response.statusCode == 200) {
        // Sign-out successful
        // Navigate to login screen
        // ignore: use_build_context_synchronously
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Login()));
        print('User signed out successfully');
      } else {
        //error handling
        print('Sign-out failed: ${response.statusCode}, ${widget.token}');
      }
      //error handling
    } catch (e) {
      print('Error during sign-out: $e');
    }
  }

  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Scaffold(
        key: _globalKey,
        // side drawer (sidebar)
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.account_circle_outlined,
                    size: 100,
                    color: Color(0xFF21386E),
                  ),
                  Text(
                    'User_Name',
                    style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF21386E),
                        fontFamily: 'Roboto'),
                  ),
                ],
              )),
              const SizedBox(
                height: 25,
              ),
              ListTile(
                title: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                Profile(token: widget.token)));
                    signOut();
                  },
                  child: const Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Color(0xFF21386E),
                        size: 30,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Profile',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF21386E),
                            fontFamily: 'Roboto'),
                      ),
                      SizedBox(
                        width: 137,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF21386E),
                      )
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
                color: Color(0xFF21386E),
              ),
              const SizedBox(
                height: 7,
              ),
              ListTile(
                title: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Profile(
                                  token: widget.token,
                                )));
                    signOut();
                  },
                  child: const Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Color(0xFF21386E),
                        size: 30,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'My Cart',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF21386E),
                            fontFamily: 'Roboto'),
                      ),
                      SizedBox(
                        width: 125,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF21386E),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
                color: Color(0xFF21386E),
              ),
              const SizedBox(
                height: 7,
              ),
              ListTile(
                title: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Profile(
                                  token: widget.token,
                                )));
                    signOut();
                  },
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 5,
                      ),
                      Image(
                        image: AssetImage('assets/pokeball.png'),
                        height: 25,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'My Flokemon',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF21386E),
                            fontFamily: 'Roboto'),
                      ),
                      SizedBox(
                        width: 75,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF21386E),
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                thickness: 1,
                color: Color(0xFF21386E),
              ),
              const SizedBox(
                height: 7,
              ),
              ListTile(
                title: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Settings()));
                  },
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 3,
                      ),
                      Icon(
                        Icons.settings_outlined,
                        color: Color(0xFF21386E),
                        size: 30,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Settings ',
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xFF21386E),
                            fontFamily: 'Roboto'),
                      ),
                      SizedBox(
                        width: 115,
                      ),
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF21386E),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              const Divider(
                height: 20,
                thickness: 1,
                indent: 20,
                endIndent: 20,
                color: Color(0xFF21386E),
              ),
              const SizedBox(
                height: 25,
              ),
              ListTile(
                title: GestureDetector(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                      signOut();
                    },
                    child: const Row(
                      children: [
                        SizedBox(
                          width: 9,
                        ),
                        Icon(
                          Icons.logout,
                          color: Color(0xFF21386E),
                          size: 30,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          'Sign Out',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFF21386E),
                              fontFamily: 'Roboto'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: const Color(0xFFFCFCFC),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              //Top Navigation Bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                    child: GestureDetector(
                      onTap: () {
                        _globalKey.currentState?.openDrawer();
                      },
                      child: const Image(
                        image: AssetImage('assets/icons/fries_icon_menu.png'),
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ),
                  const Text(
                    'Explore',
                    style: TextStyle(
                        color: Color(0xFFFFCB05),
                        fontFamily: 'Pokemon',
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 15.0, 0.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                        signOut();
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
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SearchPage()));
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(255, 229, 229, 229)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Search Flokemons"),
                      Icon(
                        Icons.search,
                        color: Color(0xFF21386E),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              const SizedBox(
                height: 30,
              ),
              const Text(
                'Popular Flokemons',
                style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),

              const SizedBox(
                height: 15,
              ),

              //pokemon tiles
              Expanded(
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  itemCount: value.getFlokemonList().length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    Flokemon flokemon = value.getFlokemonList()[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: GestureDetector(
                        onTap: () {
                          if (index == 0) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const DetailsPikachu()));
                          } else if (index == 1) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const DetailsDitto()));
                          } else if (index == 2) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const DetailsSnorlax()));
                          } else if (index == 3) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const DetailsUnown()));
                          } else {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const DetailsCelebi()));
                          }
                        },
                        child: FlokemonTile(
                          flokemon: flokemon,
                        ),
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(
                height: 41,
              ),
              //new arrival ui
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Padding(
                    padding: EdgeInsets.fromLTRB(0.0, 0.0, 135.0, 0.0),
                    child: Text(
                      'New Arrivals',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const NewArrival()));
                    },
                    child: const Text(
                      'See All',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF21386E),
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const NewArrival()));
                  },
                  child: const Image(
                      image: AssetImage('assets/promotion_banner.png'))),
              const SizedBox(
                height: 102,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
