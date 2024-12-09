import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;

  CartItem({
    super.key,
    required this.shoe,
  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeItemFromCart(){
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: SizedBox(
          width: 100,
          height: 100,
          child: Image.asset(
            widget.shoe.image,
            fit: BoxFit.fill,
          ),
        ),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.cost),
        trailing: IconButton(onPressed: removeItemFromCart, icon: const Icon(Icons.delete),),
      ),
    );
  }
}
