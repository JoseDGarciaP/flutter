import 'package:flutter/material.dart';
import 'package:router_go/config/router/router.dart';
import 'package:router_go/config/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 0).getThemeData(),
    );
  }
}
