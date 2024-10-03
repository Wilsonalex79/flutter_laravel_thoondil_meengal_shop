import 'package:flutter/material.dart';
import 'package:flutter_laravel_thoondil_meengal_shop/screens/auth/LoginScreen.dart';
import 'package:flutter_laravel_thoondil_meengal_shop/screens/product/ProductScreen.dart';
import 'package:flutter_laravel_thoondil_meengal_shop/services/CartProvider.dart';

import 'package:provider/provider.dart';

import 'package:flutter_laravel_thoondil_meengal_shop/screens/HomeScreen.dart';
import 'package:flutter_laravel_thoondil_meengal_shop/services/auth.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Auth()),
        ChangeNotifierProvider(create: (context) => CartProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(title: 'Home'),
      },
    );
  }
}