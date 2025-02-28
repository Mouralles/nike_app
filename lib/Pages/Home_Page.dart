// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:nike_app/Components/bottom_nav_bar.dart';
import 'package:nike_app/Pages/Carrinhopag.dart';
import 'package:nike_app/Pages/Comprarpag.dart';

class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Isso é para controlar o que será selecionado no nav bar, 0 é a home page.
  int _selectedIndex = 0;

  //esse método irá atualizar o index selecionado.
  void navigateBottomBar (int index) {
    setState(() {
      _selectedIndex= index;
    });
  }


  // páginas
  final List<Widget> _pages = [
    const ShopPag(),

    const CarrinhoPag(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index) ,
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(onPressed: () {
            Scaffold.of(context).openDrawer();
          },
           icon: const Icon(
            Icons.menu,
            color: Colors.black,
            )
           ),
            ),
      ),
      drawer:  
         Drawer(
          backgroundColor: Colors.grey[900],
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Column(
                  children: [
                     DrawerHeader(
                    child: Image.asset('lib/images/nike_png.png',
                    height: 300,
                    ),
                  ),

                   Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 25,),
                     child: Divider(
                      color: Colors.grey[800],
                       ),
                   ),
                   const ListTile(
                    leading: Icon(Icons.home,
                    color: Colors.white,
                    ),
                    title: Text('home',
                    style: TextStyle(color: Colors.white),
                    ),
                   ),

                   const ListTile(
                    leading: Icon(Icons.account_circle,
                    color: Colors.white,
                    ),
                    title: Text('usuário',
                    style: TextStyle(color: Colors.white),
                    ),
                   ),
                  ],
                 ),

                   const ListTile(
                    leading: Icon(Icons.logout_outlined,
                    color: Colors.white,
                    ),
                    title: Text('logout',
                    style: TextStyle(color: Colors.white),
                    ),
                   ),
                ],
              ),
            ),
      body: _pages[_selectedIndex],
    );
  }
}