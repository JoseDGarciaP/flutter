import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
      ),
      body: Column(
        children: [
          Card(
            elevation: 2,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text("Hola card."),
            ),
          ),
          Card(
            elevation: 2,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.network("https://picsum.photos/200/300",
                height: 64,
                fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}