import 'package:flutter/material.dart';
import 'package:router_go/presentation/widget/layout/drawer_custom.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      drawer: DrawerCustom(),
      body: Text('Hola Settings'),
    );
  }
}