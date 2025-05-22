import 'package:e_commerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'First',
      price: '90',
      imagePath: 'lib/images/pic1.webp',
      description: 'first cool one',
    ),
    Shoe(
      name: 'Second',
      price: '150',
      imagePath: 'lib/images/pic2.webp',
      description: 'Second cool one',
    ),
    Shoe(
      name: 'Third',
      price: '125',
      imagePath: 'lib/images/pic3.avif',
      description: 'Third cool one',
    ),
  ];
  //user's items in basket
  List<Shoe> userCart = [];

  //get all the shoes

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart(basket)

  List<Shoe> getUserCart() {
    return userCart;
  }
  //add items to basket(cart)

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from basket

  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
