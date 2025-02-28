// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nike_app/Pages/Home_Page.dart';

class Intro_Page extends StatelessWidget {
  const Intro_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300 ,
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: Column(
        
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                'lib/images/nike_png.png',
                height: 240,
                ),
              ),
        
              SizedBox(height: 40,),
        
              Text(
                'Just Do It',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  ),
                ),
      
                SizedBox(height: 20,),
      
                Text(
                  'Compre os melhores Tenis nas melhores formas aqui.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
      
                SizedBox(height: 40,),
      
                GestureDetector(
                  onTap: () => Navigator.push(
                  context,
                   MaterialPageRoute(builder: (context) => HomePage(),)),
      
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        
                        borderRadius: BorderRadius.circular(16),
                  
                        ),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(30.0),
                          child: Text(
                            'Compre agora',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                            ),
                        ),
                      ),
                      
                    ),
                  ),
                ),
        
              
            ],
        
          ),
        ),
      ),

    );
  }
}