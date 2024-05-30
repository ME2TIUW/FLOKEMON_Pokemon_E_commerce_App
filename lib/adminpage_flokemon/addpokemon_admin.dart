// // import 'dart:io';

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:mcc_lab_23dec23/adminpage_flokemon/admin_screen.dart';
// import 'package:mcc_lab_23dec23/components/my_textfield.dart';
// import '../flokemons/flokemonn.dart';
// import 'package:http/http.dart' as http;
// // import 'package:image_picker/image_picker.dart';

// class AddPokemon extends StatefulWidget {
//   const AddPokemon({Key? key}) : super(key: key);

//   @override
//   State<AddPokemon> createState() => _AddPokemonState();
// }

// class _AddPokemonState extends State<AddPokemon> {
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _descriptionController = TextEditingController();
//   final TextEditingController _imagePathController = TextEditingController();
//   final TextEditingController _priceController = TextEditingController();

//   // final String baseUrl = 'http://10.0.2.2:8080';

//   Future<Flokemonn> addFlokemonn(Flokemonn newFlokemonn) async {
//     final response = await http.post(
//       Uri.parse('http://10.0.2.2:8080/flokemon'),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//       },
//       body: jsonEncode(newFlokemonn.toJson()),
//     );
//     if (response.statusCode == 201) {
//       final dynamic addedFlokemonn = json.decode(response.body);
//       print('Pokemon Added!');
//       return Flokemonn.fromJson(addedFlokemonn);
//     } else {
//       throw Exception('Failed to add flokemonn');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SafeArea(
//         child: ListView(
//           children: [
//             Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 25, right: 90),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => const Adminhome(
//                                         token: '',
//                                       )));
//                         },
//                         child: const Padding(
//                           padding: EdgeInsets.only(right: 25),
//                           child:
//                               Icon(Icons.arrow_back_ios, color: Colors.black),
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 75,
//                       ),
//                       const Text(
//                         'Add FLokemon',
//                         textAlign: TextAlign.center,
//                         style: TextStyle(
//                           fontFamily: 'Poppins',
//                           fontSize: 24,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black87,
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 const SizedBox(
//                   height: 25,
//                 ),
//                 MyTextField(
//                     controller: _nameController,
//                     hintText: 'Flokemon Name',
//                     obscureText: false),
//                 const SizedBox(
//                   height: 25,
//                 ),
//                 MyTextField(
//                     controller: _descriptionController,
//                     hintText: 'Flokemon Dsecription',
//                     obscureText: false),
//                 const SizedBox(
//                   height: 25,
//                 ),
//                 MyTextField(
//                     controller: _imagePathController,
//                     hintText: 'Flokemon image path (in asset)',
//                     obscureText: false),
//                 const SizedBox(
//                   height: 25,
//                 ),
//                 MyTextField(
//                     controller: _priceController,
//                     hintText: 'Flokemon Price',
//                     obscureText: false),
//                 const SizedBox(
//                   height: 25,
//                 ),
//                 ElevatedButton(
//                   onPressed: () async {
//                     final int? parsedPrice =
//                         int.tryParse(_priceController.text);
//                     if (parsedPrice != null) {
//                       final newFlokemonn = Flokemonn(
//                         name: _nameController.text,
//                         description: _descriptionController.text,
//                         imagePath: _imagePathController.text,
//                         price: parsedPrice,
//                       );
//                       try {
//                         await addFlokemonn(newFlokemonn);
//                         print('flokemonn added successfully');
//                       } catch (e) {
//                         print('Error adding Flokemon: $e');
//                         throw Exception('Failed to add flokemonn');
//                       }
//                     } else {
//                       // Show an error message to the user about incorrect price input
//                       showDialog(
//                         context: context,
//                         builder: (BuildContext context) {
//                           return AlertDialog(
//                             title: const Text('Invalid Price'),
//                             content: const Text(
//                                 'Please enter a valid integer for the price.'),
//                             actions: <Widget>[
//                               TextButton(
//                                 onPressed: () {
//                                   Navigator.of(context).pop();
//                                 },
//                                 child: const Text('OK'),
//                               ),
//                             ],
//                           );
//                         },
//                       );
//                     }
//                   },
//                   child: const Text('Add Flokemonn'),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:mcc_lab_23dec23/components/my_textfield.dart';
import '../flokemons/flokemonn.dart';
import 'package:http/http.dart' as http;

class AddPokemon extends StatefulWidget {
  const AddPokemon({Key? key}) : super(key: key);

  @override
  State<AddPokemon> createState() => _AddPokemonState();
}

class _AddPokemonState extends State<AddPokemon> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _imagePathController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  Future<Flokemonn> addFlokemonn(Flokemonn newFlokemonn) async {
    try {
      final response = await http.post(
        Uri.parse('http://10.0.2.2:8080/flokemon'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(newFlokemonn.toJson()),
      );

      if (response.statusCode == 201) {
        final dynamic addedFlokemonn = json.decode(response.body);
        print('Pokemon Added!');
        return Flokemonn.fromJson(addedFlokemonn);
      } else {
        throw Exception('Failed to add flokemonn');
      }
    } catch (e) {
      print('Error adding Flokemon: $e');
      rethrow; // Rethrow the caught error for better debugging
    }
  }

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
                MyTextField(
                    controller: _nameController,
                    hintText: 'Flokemon Name',
                    obscureText: false),
                const SizedBox(
                  height: 25,
                ),
                MyTextField(
                    controller: _descriptionController,
                    hintText: 'Flokemon Dsecription',
                    obscureText: false),
                const SizedBox(
                  height: 25,
                ),
                MyTextField(
                    controller: _imagePathController,
                    hintText: 'Flokemon image path (in asset)',
                    obscureText: false),
                const SizedBox(
                  height: 25,
                ),
                MyTextField(
                    controller: _priceController,
                    hintText: 'Flokemon Price',
                    obscureText: false),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () async {
                    final int? parsedPrice =
                        int.tryParse(_priceController.text);
                    if (parsedPrice != null) {
                      final newFlokemonn = Flokemonn(
                        name: _nameController.text,
                        description: _descriptionController.text,
                        imagePath: _imagePathController.text,
                        price: parsedPrice,
                      );
                      try {
                        await addFlokemonn(newFlokemonn);
                        print('flokemonn added successfully');
                      } catch (e) {
                        print('Error adding Flokemon: $e');
                        // Show an error message to the user about the failure
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Error'),
                              content: const Text(
                                  'Failed to add Flokemonn. Please try again.'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('OK'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    } else {
                      // Show an error message to the user about incorrect price input
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Invalid Price'),
                            content: const Text(
                                'Please enter a valid integer for the price.'),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Text('OK'),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  child: const Text('Add Flokemonn'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
