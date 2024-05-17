import 'package:Shopping_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Air Jordan 1',
        price: '10,795.00',
        imagePath: 'lib/images/air-jordan-1.jpeg',
        description:
            'Each Craft released puts a handmade feel on the AJ1 and these low-cut sneakers are no exception.'),
    Shoe(
        name: 'Air Force 1',
        price: '10,795.00',
        imagePath: 'lib/images/air-force-1.png',
        description:
            'Comfortable, durable and timeless—it\'s number 1 for a reason. '),
    Shoe(
        name: 'Zoom Vome',
        price: '10,795.00',
        imagePath: 'lib/images/zoom-vomero.png',
        description:
            'Carve a new lane for yourself in the Vomero 5—your go-to for complexity, depth and easy styling.'),
    Shoe(
        name: 'Zoom freaks',
        price: '10,795.00',
        imagePath: 'lib/images/shoe3.jpg',
        description: 'Awesome shoes'),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
