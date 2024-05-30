import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../flokemons/cart.dart';
import '../flokemons/flokemon.dart'; // Import the Cart class

class ShoppingCartPage extends StatelessWidget {
  const ShoppingCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
      ),
      body: Consumer<Cart>(
        builder: (context, cart, child) {
          List<Flokemon> userCart = cart.getFlokemonCart();

          return Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: userCart.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      leading:
                          Image(image: AssetImage(userCart[index].imagePath)),
                      title: Text(userCart[index].name),
                      subtitle: Text('\$${userCart[index].price}'),
                      trailing: IconButton(
                        icon: const Icon(Icons.remove_circle),
                        onPressed: () {
                          cart.removeFlokemonFromCart(userCart[index]);
                        },
                      ),
                    );
                  },
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Text(
                      'Total:',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\$${cart.calculateTotal()}',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
