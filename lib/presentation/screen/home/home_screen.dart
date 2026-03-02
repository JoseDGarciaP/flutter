import 'package:flutter/material.dart';
import 'package:router_go/presentation/widget/layout/drawer_custom.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hola Home')),
      drawer: DrawerCustom(),
      body: Center(
        child: Column(
          children: [
            Text('Hola Home'),
            FilledButton(onPressed: () {}, child: Text('Botón')),
          ],
        ),
      ),
    );
  }
}
