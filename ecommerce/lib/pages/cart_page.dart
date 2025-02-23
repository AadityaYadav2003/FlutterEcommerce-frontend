import 'package:ecommerce/components/my_button.dart';
import 'package:ecommerce/components/my_drawer.dart';
import 'package:ecommerce/models/product.dart';
import 'package:ecommerce/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  // remove item from cart method
  void removeItemFromCart(BuildContext context, Product product) {
    // show a dialog box to ask user to confirm to remove cart
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text("Remove this item from your cart?"),
        actions: [
          // cancle button
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancle"),
          ),

          // yes button
          MaterialButton(
            onPressed: () {
              // pop dialog box
              Navigator.pop(context);

              //  add to cart
              context.read<Shop>().removeFromCart(product);
            },
            child: Text("yes"),
          ),
        ],
      ),
    );
  }

  // user pressed the pay button
  void payButtonPressed(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content:
            Text("User wants to pay ! Connect this to your payment backend"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // get access to the cart
    final cart = context.watch<Shop>().cart;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Cart Page'),
        ),
        drawer: const MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
          children: [
            // cart list
            Expanded(
              child: cart.isEmpty
                  ? const Center(child: Text("Your cart is empty..."))
                  : ListView.builder(
                      itemCount: cart.length,
                      itemBuilder: (context, index) {
                        // get individual item in cart
                        final item = cart[index];

                        // return as a cart tile UI
                        return ListTile(
                          title: Text(item.name),
                          subtitle: Text(item.price.toStringAsFixed(2)),
                          trailing: IconButton(
                            icon: const Icon(Icons.remove),
                            onPressed: () => removeItemFromCart(context, item),
                          ),
                        );
                      },
                    ),
            ),
            // pay button
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyButton(
                  text: "PAY NOW",
                  onTap: () => payButtonPressed(context),
                  child: Text("PAY NOW")),
            )
          ],
        ));
  }
}
