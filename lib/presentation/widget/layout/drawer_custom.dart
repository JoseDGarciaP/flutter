import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:router_go/config/router/router_config.dart';

class DrawerCustom extends StatelessWidget {
  const DrawerCustom({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ...routerConfig.map((route) {
            return ListTile(
              title: Text(route.title),
              subtitle: Text(route.description),
              trailing: Icon(Icons.abc_rounded),
              onTap: () {
                context.go(route.path);
              },
            );
          })
        ],
      ),
    );
  }
}