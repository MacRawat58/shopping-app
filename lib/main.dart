import 'package:Shopping_app/models/cart.dart';
import 'package:Shopping_app/pages/intro_page.dart';
import 'package:Shopping_app/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => const MaterialApp(
          debugShowCheckedModeBanner: false, home: LoginPage()),
    );
  }
}
