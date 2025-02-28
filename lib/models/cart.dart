import 'package:flutter/material.dart';
import 'package:nike_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop= [
    Shoe(
      name: 'Nike Airmax',
      price: '400',
      imagePath: 'lib/images/nike_air_max.jpg',
      description: 'Tenis incrivel'
      ),

      Shoe(
      name: 'Nike Airjordan',
      price: '700',
      imagePath: 'lib/images/jordan_travis.jpg',
      description: 'Tenis caro porém bastante bonito'
      ),

      Shoe(
      name: 'Air force',
      price: '400',
      imagePath: 'lib/images/nike_air_max.jpg',
      description: 'Tenis moderno, todos querem um'
      ),

      Shoe(
      name: 'All stars',
      price: '200',
      imagePath: 'lib/images/jordan_travis.jpg',
      description: 'O que isto está fazendo aqui?'
      ),
  ];

  //Lista de itens no carrinho
      List<Shoe> userCart = [];

  //Lista de tenis a venda
      List<Shoe> getShoeList (){
        return shoeShop;
      }

  //Ir para o carrinho
  List<Shoe> getUserCart () {
    return userCart;
  }

  //adicionar ao carrinho
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remover do carrinho
  void removerItemToCart (Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {}


}