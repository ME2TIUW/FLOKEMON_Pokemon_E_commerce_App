// import 'dart:convert';

// import 'package:http/http.dart' as http;

// import 'flokemonn.dart';

// class ApiService {
//   static const String baseUrl = 'https://your-backend-api-url.com';

//   Future<List<Flokemonn>> fetchPokemons() async {
//     final response = await http.get(Uri.parse('$baseUrl/flokemon'));
//     if (response.statusCode == 200) {
//       // Convert response to a list of Flokemonn objects
//       final List<dynamic> data = json.decode(response.body);
//       return data.map((json) => Flokemonn.fromJson(json)).toList();
//     } else {
//       throw Exception('Failed to load pokemons');
//     }
//   }

//   Future<Flokemonn> addPokemon(Flokemonn pokemon) async {
//     final response = await http.post(
//       Uri.parse('$baseUrl/flokemon'),
//       headers: <String, String>{
//         'Content-Type': 'application/json; charset=UTF-8',
//         // Add authorization token if needed
//         // 'Authorization': 'Bearer YOUR_TOKEN_HERE',
//       },
//       body: jsonEncode(pokemon.toJson()),
//     );
//     if (response.statusCode == 201) {
//       return Flokemonn.fromJson(json.decode(response.body));
//     } else {
//       throw Exception('Failed to add pokemon');
//     }
//   }

//   // Implement updatePokemon, deletePokemon methods similarly...
// }
