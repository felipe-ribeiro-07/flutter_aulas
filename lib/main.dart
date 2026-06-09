import 'package:flutter/material.dart';
import 'package:ifood/cart_screen.dart';
import 'package:ifood/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,

      routes: {
        '/cart': (context) => const CartScreen(), 
      },

    )
  );
}

