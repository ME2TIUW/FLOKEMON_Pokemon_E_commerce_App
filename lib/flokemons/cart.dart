import 'package:flutter/widgets.dart';
import 'package:mcc_lab_23dec23/flokemons/flokemon.dart';

// class Cart extends ChangeNotifier {
//   //flokemons for sale
//   List<Flokemon> flokemonStore = [
//     Flokemon(
//         description: 'BEST-SELLER',
//         name: 'Pikachu',
//         imagePath: 'assets/pikachu.png',
//         price: '20.00'),
//     Flokemon(
//         description: 'BEST-SELLER',
//         name: 'Ditto',
//         imagePath: 'assets/ditto.png',
//         price: '25.00'),
//     Flokemon(
//         description: 'BEST-SELLER',
//         name: 'Snorlax',
//         imagePath: 'assets/snorlax.png',
//         price: '30.00'),
//     Flokemon(
//         description: 'BEST-SELLER',
//         name: 'Unown',
//         imagePath: 'assets/unown.png',
//         price: '10.00'),
//     Flokemon(
//         description: 'BEST-SELLER',
//         name: 'Celebi',
//         imagePath: 'assets/Celebi.webp',
//         price: '15.00'),
//   ];

//   List _carItems = [];

//   //flokemons in user cart
//   List<Flokemon> userCart = [];

//   //get list of flokemon
//   List<Flokemon> getFlokemonList() {
//     return flokemonStore;
//   }

//   //get cart
//   List<Flokemon> getFlokemonCart(Flokemon flokemon) {
//     return userCart;
//   }

//   //add items to the cart
//   void addFlokemonToCart(Flokemon flokemon) {
//     userCart.add(flokemon);
//   }

//   //remove item from the cart
//   void removeFlokemonToCart(Flokemon flokemon) {
//     userCart.remove(flokemon);
//   }

//   //calcualate total price
// }

class Cart extends ChangeNotifier {
  // Flokemons for sale
  List<Flokemon> flokemonStore = [
    Flokemon(
        description: 'BEST-SELLER',
        name: 'Pikachu',
        imagePath: 'assets/pikachu.png',
        price: '20.00'),
    Flokemon(
        description: 'BEST-SELLER',
        name: 'Ditto',
        imagePath: 'assets/Ditto.png',
        price: '25.00'),
    Flokemon(
        description: 'BEST-SELLER',
        name: 'Snorlax',
        imagePath: 'assets/snorlax.png',
        price: '30.00'),
    Flokemon(
        description: 'BEST-SELLER',
        name: 'Unown',
        imagePath: 'assets/unown.png',
        price: '10.00'),
    Flokemon(
        description: 'BEST-SELLER',
        name: 'Celebi',
        imagePath: 'assets/Celebi.webp',
        price: '15.00'),
  ];

  List<Flokemon> _userCart = [];

  // Get list of flokemon
  List<Flokemon> getFlokemonList() {
    return flokemonStore;
  }

  // Get cart
  List<Flokemon> getFlokemonCart() {
    return _userCart;
  }

  // Add item to the cart
  void addFlokemonToCart(Flokemon flokemon) {
    _userCart.add(flokemon);
    notifyListeners();
  }

  // Remove item from the cart
  void removeFlokemonFromCart(Flokemon flokemon) {
    _userCart.remove(flokemon);
    notifyListeners();
  }

  // Calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _userCart.length; i++) {
      totalPrice += double.parse(_userCart[i].price);
    }
    return totalPrice
        .toStringAsFixed(2); // Return total price with 2 decimal places
  }
}
