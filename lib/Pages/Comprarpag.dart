// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:nike_app/models/cart.dart';
import 'package:nike_app/models/shoe.dart';
import 'package:provider/provider.dart';

import '../Components/shoe_tile.dart';

class ShopPag extends StatefulWidget {
  const ShopPag({super.key,});

  @override
  State<ShopPag> createState() => _ComprarPagState();
}

class _ComprarPagState extends State<ShopPag> {
  void addShoeCart(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    //alerta que deu certo
  showDialog(context: context,
   builder: (context)=> AlertDialog(

    title: Text('Adicionado!'),
    content: Text('olhe seu carrinho'),
   ));
  }

  
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder:(context, value, child) => Column(

      //barra de pesquisa
      children: [
        Container(
          height: 40,
          padding: EdgeInsets.all(8),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
           
            children: [
              const Text('Proucurar',
              style: TextStyle(
                color: Colors.grey,
              ),
                ),
                Icon(Icons.search,
                color: Colors.grey,
                ),
            ],
          ),
        ),
           Padding(
          padding: const EdgeInsets.all(30),
          child: Text('Alguns voam...outros voam mais que outros',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            ),
          ),
        ),

        //fotos
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Nossas fotos',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              ),
              Text('veja mais',
              style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.blue
              ),
              ),
            ],
          ),
        ),
        //fotos

        SizedBox(
          height: 20,
        ),

        Expanded(child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {

            //pegar um tenis da lista comprarpag
            Shoe shoe = value.getShoeList() [index];
            
            //return the shoe
            return ShoeTile(
              shoe: shoe,
              onTap: () => addShoeCart(shoe),
              );
          },
        ),
        ),
        SizedBox(
          height: 20,
        ),

        Padding(
          padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
          child: Divider(
            color: Colors.grey[200],
          ),
        ),
      ],
    ),
     );
  }
}