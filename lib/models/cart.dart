import 'package:flutter/material.dart';
import 'shoe.dart';

class Cart extends ChangeNotifier{

// list of shoes
 List<Shoe> shoeShop = [
  Shoe(name: 'Zoom FREAK', price: '8000', imagePath: 'lib/images/zf.jpg', description: '2023'),

  Shoe(name: 'Air Jordans', price: '9000', imagePath: 'lib/images/airj.jpg', description: '2022'),

  Shoe(name: 'KD Treys', price: '8500', imagePath: 'lib/images/kt.jpg', description: '2022'),

  Shoe(name: 'Kyrie 6', price: '8500', imagePath: 'lib/images/k6.jpg', description: '2023'),
 ];

// list of items in cart
  List<Shoe> userCart=[];

// get list of items 
  List<Shoe> getShoeList(){
    return shoeShop;
  }

//get cart
  List<Shoe> getUserCart() {
    return userCart;
  }  

// add item to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

// remove item 
  void removeItemFromCart(Shoe shoe) {
     userCart.remove(shoe);
     notifyListeners();
  }

}