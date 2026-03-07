import 'package:router_go/config/router/router_model.dart';
import 'package:router_go/presentation/screen/home/home_screen.dart';
import 'package:router_go/presentation/screen/product/product_screen.dart';
import 'package:router_go/presentation/screen/settings/settings_screen.dart';
import 'package:router_go/presentation/screen/users/users_screen.dart';

List<RouterModel> routerConfig = [
  RouterModel(
    name: 'home',
    title: 'Home',
    description: 'Esto es el home screen',
    path: '/',
    widget: (context, state) => const HomeScreen(),
  ),
  RouterModel(
    name: 'settings',
    title: 'Settings',
    description: 'Esto es el settings screen',
    path: '/settings',
    widget: (context, state) => const SettingsScreen(),
  ),
  RouterModel(
    name: 'users',
    title: 'Users',
    description: 'Esto es el users screen',
    path: '/users',
    widget: (context, state) => const UsersScreen(),
  ),
  RouterModel(
    name: 'Products',
    title: 'Products',
    description: 'Esto es el products screen',
    path: '/products',
    widget: (context, state) => const ProductScreen(),
  ),
];
