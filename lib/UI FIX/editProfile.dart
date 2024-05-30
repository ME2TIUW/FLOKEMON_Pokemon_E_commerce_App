// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mcc_lab_23dec23/screens/Profile.dart';

class EditProfile extends StatefulWidget {
  final String token;
  const EditProfile({super.key, required this.token});
  @override
  State<EditProfile> createState() => EditProfileState();
}

class EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 65, 65, 0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffF7F7F9)),
                      child: const Padding(
                        padding: EdgeInsets.fromLTRB(12, 0, 0, 0),
                        child:
                            Icon(Icons.arrow_back_ios, color: Colors.black87),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(45, 65, 0, 0),
                    child: Text('Profile',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(80, 65, 0, 0),
                      child: TextButton(
                          onPressed: () {
                            const Profile(
                              token: '',
                            );
                          },
                          child: const Text(
                            'Done',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color(0xff21386E)),
                          ))),
                ],
              ),

              //ICON PROFILE//

              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                child: Icon(Icons.account_circle_outlined,
                    color: Colors.black54, size: 120),
              ),

              //NAME//
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text('Your Name',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
              ),

              //CHANGE PROFILE PIC//

              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: Text(
                  'Change Profile Picture',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff21386E)),
                ),
              ),

              //FISRT NAME//

              const SizedBox(width: 20),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 260, 0),
                child: Text('First Name',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2B2B2B))),
              ),

              //FIRST NAME TEXTBOX//

              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  keyboardType: TextInputType.name,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      hintText: ' Your First Name',
                      hintStyle: TextStyle(fontFamily: 'Poppins', fontSize: 14),
                      border: OutlineInputBorder(),
                      fillColor: Color(0xffF7F7F9)),
                ),
              ),

              //LAST NAME//
              const SizedBox(width: 20),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 260, 0),
                child: Text('Last Name',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2B2B2B))),
              ),

              //LAST NAME TEXTBOX//

              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  keyboardType: TextInputType.name,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      hintText: 'Your Last Name',
                      hintStyle: TextStyle(fontFamily: 'Poppins', fontSize: 14),
                      border: OutlineInputBorder(),
                      fillColor: Color(0xffF7F7F9)),
                ),
              ),

              //LOCATION//

              const SizedBox(width: 20),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 275, 0),
                child: Text('Location',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2B2B2B))),
              ),

              //LOCATION TEXTBOX//

              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  keyboardType: TextInputType.name,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      hintText: 'Your Location',
                      hintStyle: TextStyle(fontFamily: 'Poppins', fontSize: 14),
                      border: OutlineInputBorder(),
                      fillColor: Color(0xffF7F7F9)),
                ),
              ),

              //MOBILE NUMBER//

              const SizedBox(width: 20),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 25, 210, 0),
                child: Text('Mobile Number',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff2B2B2B))),
              ),

              //MOBILE NUMBER TEXTBOX//

              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                      hintText: '+62xxxx',
                      hintStyle: TextStyle(fontFamily: 'Poppins', fontSize: 14),
                      border: OutlineInputBorder(),
                      fillColor: Color(0xffF7F7F9)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
