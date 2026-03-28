import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: Text("Button"),
            onTap: () => Navigator.pushNamed(context, 'button'),
          ),
          ListTile(
            title: Text("Card"),
            onTap: () => Navigator.pushNamed(context, 'card'),
          )
        ],
      ) 
    );
  }
}