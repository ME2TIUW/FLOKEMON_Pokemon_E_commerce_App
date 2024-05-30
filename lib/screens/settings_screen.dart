import 'package:flutter/material.dart';
import 'package:mcc_lab_23dec23/screens/body_navigator.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 0.0, 0.0, 0.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const BodyNavigator(token: '')));
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xFF21386E),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'Settings',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF21386E)),
                  ),
                ),
              ],
            ),
          ),

          //switch button

          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Dark mode',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF21386E)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 175.0),
                  child: Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Text(
                    'Notifications',
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF21386E)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 153.0),
                  child: Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(children: [
              const Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'button',
                  style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF21386E)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 223.0),
                child: Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
              ),
            ]),
          ),
          const SizedBox(
            height: 470,
          ),

          const Text(
            'Flokemon 0.0.1',
            style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w400,
                fontSize: 24,
                color: Colors.grey),
            textAlign: TextAlign.center,
          )
        ],
      )),
    );
  }
}
