import 'package:ejemplo/presentation/screen/button/button_screen.dart';
import 'package:ejemplo/presentation/screen/card/card_screen.dart';
import 'package:ejemplo/presentation/screen/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Widgets', 
      initialRoute: '/', 
      routes: {
        '/': (context) => const Home(),
        'button': (context) => const ButtonScreen(),
        'card': (context) => const CardScreen(),
      }
    );
  }
}
