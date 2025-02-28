// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
   void Function(int)? onTabChange;
   MyBottomNavBar({super.key, required this.onTabChange});
 

  //essa tab foi feita usando o google_navbar no yaml.

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey,
        activeColor: Colors.grey.shade700,
        tabActiveBorder: Border.all(color:Colors.white),
        tabBackgroundColor: Colors.grey.shade100,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 16,
        onTabChange: (value) => onTabChange!(value),
        
    
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Shop',
          ),
    
             GButton(
            icon: Icons.shopping_cart,
            text: 'carrinho',
          ),
         
        ],
        
      ),
    );
  }
}