import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoe for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air Jordan 1 OG',
        price: '1100',
        imagepath: 'lib/images/AirJordan1high.png',
        description: 'Air Jordan 1 High OG'),
    Shoe(
        name: 'Retro 4 OG',
        price: '1999',
        imagepath: 'lib/images/JordanRetro4.png',
        description:
            'You\'ve got the hops and speed-lace up in shoes that enhacnce'),
    Shoe(
        name: 'Air Jordan 1 Max',
        price: '2300',
        imagepath: 'lib/images/AirJordanMax.png',
        description: 'Air Jordan 1 Max Off-White Edition'),
    Shoe(
        name: 'Air Jordan 1 Mid',
        price: '800',
        imagepath: 'lib/images/AirJordanMid.png',
        description: 'Air Jordan 1 Mid Yellow'),
  ];


  //list of  items
  List<Shoe> userCart = [];

  //get list of shoe for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemToCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
