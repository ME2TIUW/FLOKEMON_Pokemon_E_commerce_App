// ignore: file_names
import 'package:flutter/material.dart';
import 'package:mcc_lab_23dec23/screens/body_navigator.dart';

import '../components/my_textfield.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});
  final searchPageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F9),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 65, 0),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xffF7F7F9)),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BodyNavigator(
                                        token: '',
                                      )));
                        },
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          child:
                              Icon(Icons.arrow_back_ios, color: Colors.black87),
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
                    child: Text('Search',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                            color: Colors.black)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            MyTextField(
                controller: searchPageController,
                hintText: 'Search',
                obscureText: false)
          ],
        ),
      ),
    );
  }
}
