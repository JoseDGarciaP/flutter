import 'package:flutter/material.dart';
import 'package:router_go/presentation/widget/layout/drawer_custom.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Users')),
      drawer: DrawerCustom(),
      body: Text('Hola Users'),
    );
  }
}