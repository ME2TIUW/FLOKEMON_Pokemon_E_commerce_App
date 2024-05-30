// ignore_for_file: prefer_const_literals_to_create_immutables
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mcc_lab_23dec23/components/my_textfield.dart';
import 'package:mcc_lab_23dec23/adminpage_flokemon/admin_screen.dart';
import 'package:mcc_lab_23dec23/screens/register_screen.dart';
import 'package:mcc_lab_23dec23/screens/welcome_to_home.dart';
import '../api/google_signin_api.dart';
import 'user_screen.dart';
import 'package:http/http.dart' as http;

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String token = '';
  bool checkLogin = false;
  //controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> login(String username, String password) async {
    final url = Uri.parse('http://10.0.2.2:8080/login');
    try {
      final response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode({
          'username': username,
          'password': password,
        }),
      );

      //if successfully login (HTTP POST)
      if (response.statusCode == 200) {
        final dynamic responseData = json.decode(response.body);

        if (responseData.containsKey('userid') &&
            responseData.containsKey('username') &&
            responseData.containsKey('token') &&
            responseData.containsKey('role')) {
          User user = User(
            userid: responseData['userid'] != null
                ? int.tryParse(responseData['userid'].toString()) ?? 0
                : 0,
            username: responseData['username'] as String,
            token: responseData['token'] as String,
            role: responseData['role'] as String,
          );
          if (user.role == 'user') {
            // ignore: use_build_context_synchronously
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => WelcomeHome(
                          token: user.token,
                        )));
          } else {
            // ignore: use_build_context_synchronously
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Adminhome(
                          token: user.token,
                        )));
          }
        }
        print('Navigated to New Screen screen');
      } else {
        // Error Handling
        print('Login failed: ${response.body}');
      }
    } catch (e) {
      // Error Handling
      print('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFCFCFC),
        body: SafeArea(
            child: Center(
                child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            //logo
            const Image(
                image: AssetImage('assets/munchlax.png'),
                height: 150,
                width: 150),

            const SizedBox(height: 25),

            //welcome back
            const Text(
              'Welcome back!',
              style: TextStyle(
                  color: Color(0xFFFFCB05),
                  fontSize: 30,
                  fontFamily: 'Pokemon',
                  fontWeight: FontWeight.w100,
                  letterSpacing: 2),
            ),
            const SizedBox(
              height: 3,
            ),
            const Text(
              'Please Login To Access Your Account!',
              style: TextStyle(
                  color: Color.fromARGB(255, 2, 2, 2),
                  fontSize: 14,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w500,
                  letterSpacing: 2),
            ),

            const SizedBox(
              height: 20,
            ),

            //username textfield
            MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false),

            const SizedBox(
              height: 10,
            ),

            //password textfield
            MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true),

            const SizedBox(
              height: 25,
            ),

            //loginin btn
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(162.0, 20.0, 162.0, 20.0),
                  backgroundColor: const Color(0xFF21386E)),
              onPressed: () {
                final username = usernameController.text;
                final password = passwordController.text;
                login(username, password);
              },
              child: const Text('Login'),
            ),

            const SizedBox(
              height: 35,
            ),

            // (OAuth)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Or Continue With',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(
              height: 25,
            ),
            //google sign in options
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                    onPressed: () => GoogleSignInAPI().googleOAuthSignIn(),
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 238, 238, 238),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 1.0, vertical: 1.0),
                        shadowColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                    child: const Image(
                      image: AssetImage('assets/google_logo.png'),
                      height: 70,
                      width: 70,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(
              height: 25,
            ),

            //navigate to register
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(
                      color: Color.fromARGB(255, 79, 79, 79), fontSize: 14),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterPage()));
                  },
                  child: const Text(
                    'Register now',
                    style: TextStyle(
                        color: Color(0xFF21386E),
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ),
              ],
            )
          ]),
        ))));
  }
}
