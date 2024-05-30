// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ChangePass extends StatefulWidget {
  const ChangePass({super.key});
  @override
  State<ChangePass> createState() => ChangePassState();
}

class ChangePassState extends State<ChangePass> {
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
                      padding: const EdgeInsets.fromLTRB(20, 70, 65, 0),
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

                    //TITLE CHANGE PASSWORD//
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 80, 0, 0),
                      child: Text('Change Password',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black87)),
                    )
                  ],
                ),

                //CURRENT PASS//

                const SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 60, 200, 0),
                  child: Text('Current Password',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[600])),
                ),

                //CURRENT PASS TEXTBOX//

                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        hintText: 'Enter your current password',
                        hintStyle:
                            TextStyle(fontFamily: 'Poppins', fontSize: 14),
                        border: OutlineInputBorder()),
                  ),
                ),

                //NEW PASSWORD//

                const SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 230, 0),
                  child: Text('New Password',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[600])),
                ),

                //NEW PASSWORD TEXTBOX//

                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        hintText: 'Enter your new password',
                        hintStyle:
                            TextStyle(fontFamily: 'Poppins', fontSize: 14),
                        border: OutlineInputBorder()),
                  ),
                ),

                //CONFIRM PASS//

                const SizedBox(width: 20),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 190, 0),
                  child: Text('Confirm Password',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[600])),
                ),

                //CONFIRM PASS TEXTBOX//

                const SizedBox(height: 10),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        hintText: 'Enter your new password again',
                        hintStyle:
                            TextStyle(fontFamily: 'Poppins', fontSize: 14),
                        border: OutlineInputBorder()),
                  ),
                ),

                //SAVE CHANGES BUTTON//

                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
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
        ));
  }
}
