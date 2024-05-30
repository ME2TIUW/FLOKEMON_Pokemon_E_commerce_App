// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mcc_lab_23dec23/UI%20FIX/ChangePass.dart';
import 'package:mcc_lab_23dec23/screens/body_navigator.dart';

class Profile extends StatefulWidget {
  final String? token;
  const Profile({super.key, required this.token});
  @override
  State<Profile> createState() => ProfileState();
}

class ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Row(
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
                          padding: EdgeInsets.only(left: 20),
                          child:
                              Icon(Icons.arrow_back_ios, color: Colors.black87),
                        )),
                    const Padding(
                      padding: EdgeInsets.only(left: 125),
                      child: Text(
                        'Profile',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),

                //ICON PROFILE//

                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Icon(Icons.account_circle_outlined,
                      color: Colors.black54, size: 120),
                ),

                //YOUR NAME//

                const SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 25, 270, 0),
                  child: Text('Your Name',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[600])),
                ),

                //TEXTBOX NAME//

                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    keyboardType: TextInputType.name,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        hintText: 'Enter your name',
                        hintStyle:
                            TextStyle(fontFamily: 'Poppins', fontSize: 14),
                        border: OutlineInputBorder()),
                  ),
                ),

                //EMAIL ADDRESS//

                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 240, 0),
                  child: Text('Email Address',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[600])),
                ),

                //TEXTBOX EMAIL ADDRESS//

                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        hintText: 'Enter your email',
                        hintStyle:
                            TextStyle(fontFamily: 'Poppins', fontSize: 14),
                        border: OutlineInputBorder()),
                  ),
                ),

                //PASSWORD//

                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 280, 0),
                  child: Text('Password',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[600])),
                ),

                //TEXTBOX PASSWORD//

                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        hintText: 'Enter your password',
                        hintStyle:
                            TextStyle(fontFamily: 'Poppins', fontSize: 14),
                        border: OutlineInputBorder()),
                  ),
                ),

                //CHANGE PASSWORD//

                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.fromLTRB(210, 30, 0, 0),
                  child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChangePass())),
                      child: const Text('Change Password',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff21386E)))),
                ),

                //BUTTON SAVE CHANGES//

                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                  child: Container(
                      width: 300,
                      height: 45,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: const Color(0xff21386E),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 7),
                        child: Text(
                          'Save Changes',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
