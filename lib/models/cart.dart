
import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/cupertino.dart';

class Cart extends ChangeNotifier{
  // list of shoe for sale
  List<Shoe> shoeShop = [
    Shoe(name: 'Night', cost: '21/12/2024', image: 'lib/images/4.jpg', des: 'nice sky'),
    Shoe(name: 'Sky', cost: '22/12/2024', image: 'lib/images/5.jpeg', des: 'a Sky'),
    Shoe(name: 'Sea', cost: '23/12/2024', image: 'lib/images/6.jpeg', des: 'Blue Sea'),
    Shoe(name: 'asd', cost: '24/12/2024', image: 'lib/images/3.jpg', des: 'asd'),
    Shoe(name: 'Blue', cost: '25/15/2024', image: 'lib/images/2.jpg', des: '123'),
    Shoe(name: 'Red', cost: '26/12/2024', image: 'lib/images/1.jpg', des: '456'),
  ];

  // list of items in usercart
List<Shoe> userCart = [];

  // get list of shoe for sale
List<Shoe> getShoeList() {
  return shoeShop;
}

  // get cart
List<Shoe> getUserCart() {
  return userCart;
}

  // add item to cart
void addItemToCart (Shoe shoe) {
  userCart.add(shoe);
  notifyListeners();
}

  // remove item from cart
void removeItemFromCart(Shoe shoe) {
  userCart.remove(shoe);
  notifyListeners();
}
}