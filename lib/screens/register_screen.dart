import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mcc_lab_23dec23/components/my_textfield.dart';
import 'package:mcc_lab_23dec23/screens/login_screen.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmpasswordController = TextEditingController();

  Future<void> register(String username, String password) async {
    final url = Uri.parse('http://10.0.2.2:8080/register');
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

      if (response.statusCode == 200) {
        // Registration successful, handle navigation to another page
        // ignore: use_build_context_synchronously
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Login()));
        print('Registration successful');
      } else {
        // Registration failed
        print('Registration failed: ${response.body}');
      }
    } catch (e) {
      // Error in making the request
      print('Error: $e');
    }
  }

  //sign user UP
  void signUserUp() async {
    showDialog(
      context: context,
      builder: (context) {
        return Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TweenAnimationBuilder(
                  tween: Tween(
                    begin: 0.0,
                    end: 2.0,
                  ),
                  duration: const Duration(seconds: 2),
                  builder: (context, value, _) {
                    return const SizedBox(
                      height: 100,
                      width: 100,
                      child: CircularProgressIndicator(
                        backgroundColor: Colors.grey,
                        color: Color(0xFF21386E),
                        strokeWidth: 10,
                      ),
                    );
                  }),
            ),
          ),
        );
      },
    );

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFFCFCFC),
        body: SafeArea(
            child: Center(
                child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // const SizedBox(height: 25),
            //logo
            const Image(
                image: AssetImage('assets/charmander.png'),
                height: 125,
                width: 125),

            const SizedBox(height: 25),

            //welcome back
            const Text(
              'Get Started',
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
              'Please Input Your Credentials!',
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

            //Email Textfield
            MyTextField(
              controller: usernameController,
              hintText: 'Email',
              obscureText: false,
            ),

            const SizedBox(
              height: 10,
            ),

            //password textfield
            MyTextField(
              controller: passwordController,
              hintText: 'Password',
              obscureText: true,
            ),

            const SizedBox(
              height: 10,
            ),

            MyTextField(
              controller: confirmpasswordController,
              hintText: 'Confirm Password',
              obscureText: true,
            ),

            const SizedBox(
              height: 20,
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.fromLTRB(162.0, 20.0, 162.0, 20.0),
                  backgroundColor: const Color(0xFF21386E)),
              onPressed: () {
                final username = usernameController.text;
                final password = passwordController.text;
                register(username, password);
              },
              child: const Text('Register'),
            ),

            const SizedBox(
              height: 50,
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
                      'Or Sign In With',
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
              height: 15,
            ),
            //google & fb sign in options
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ElevatedButton(
                    onPressed: () => (),
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
              height: 35,
            ),

            //register page
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Have an Account?',
                  style: TextStyle(
                      color: Color.fromARGB(255, 79, 79, 79), fontSize: 14),
                ),
                const SizedBox(
                  width: 4.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login()));
                  },
                  child: const Text(
                    'Login Here',
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
