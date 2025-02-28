// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nike_app/Pages/Intro_Page.dart';
import 'package:nike_app/models/cart.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create:(context) =>  Cart(),
    builder: (context, child) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Intro_Page (),
    ),
    );
  }
}
