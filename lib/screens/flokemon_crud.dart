import 'package:http/http.dart' as http;
import 'dart:convert';

import '../flokemons/flokemonn.dart';

class ApiService {
  final String baseUrl =
      'http://10.0.2.2:8080'; // Replace with your API base URL

  Future<List<Flokemonn>> getAllFlokemonn() async {
    final response = await http.get(Uri.parse('$baseUrl/flokemon'));
    if (response.statusCode == 200) {
      final List<dynamic> flokemonnData = json.decode(response.body);
      return flokemonnData.map((json) => Flokemonn.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load flokemonn');
    }
  }

  Future<Flokemonn> addFlokemonn(Flokemonn newFlokemonn) async {
    final response = await http.post(
      Uri.parse('$baseUrl/flokemon'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(newFlokemonn.toJson()),
    );
    if (response.statusCode == 201) {
      final dynamic addedFlokemonn = json.decode(response.body);
      return Flokemonn.fromJson(addedFlokemonn);
    } else {
      throw Exception('Failed to add flokemonn');
    }
  }

  Future<Flokemonn> updateFlokemonn(
      String flokemonnId, Flokemonn updatedFlokemonn) async {
    final response = await http.put(
      Uri.parse('$baseUrl/flokemon/$flokemonnId'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(updatedFlokemonn.toJson()),
    );
    if (response.statusCode == 200) {
      final dynamic updatedData = json.decode(response.body);
      return Flokemonn.fromJson(updatedData);
    } else {
      throw Exception('Failed to update flokemonn');
    }
  }

  Future<void> deleteFlokemonn(String flokemonnId) async {
    final response =
        await http.delete(Uri.parse('$baseUrl/flokemon/$flokemonnId'));
    if (response.statusCode != 200) {
      throw Exception('Failed to delete flokemonn');
    }
  }
}
