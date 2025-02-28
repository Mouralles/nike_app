// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nike_app/Components/CartItem.dart';
import 'package:nike_app/models/cart.dart';
import 'package:nike_app/models/shoe.dart';
import 'package:provider/provider.dart';

class CarrinhoPag extends StatelessWidget {
  const CarrinhoPag({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart> (builder: ((context, value, child) => 
    Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          Text('Meu carrinho',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
          ),
          SizedBox(height: 20,),

    Expanded(
      child: ListView.builder(
        itemCount: value.getUserCart().length,
        itemBuilder: (context, index) {

      Shoe individualShoe = value.getUserCart()[index];

      return CartItem(shoe: individualShoe);
    } ,
    ),
    )
        ],
      ),
    )
    ),
    );
  }
}