import 'package:router/config/router/router_model.dart';
import 'package:router/presentation/screen/home/home_screen.dart';
import 'package:router/presentation/screen/product/product_screen.dart';
import 'package:router/presentation/screen/producto/producto_screen.dart';
import 'package:router/presentation/screen/settings/settings_screen.dart';
import 'package:router/presentation/screen/users/users_screen.dart';

List<RouterModel> routerConfig = [
  RouterModel(
    name: 'home',
    title: 'Home',
    description: 'Esto es un home',
    path: '/',
    widget: (context, state) => const HomeScreen(),
  ),


  RouterModel(
    name: 'Settings',
    title: 'Settings',
    description: 'Esto es la pantalla de configuración',
    path: '/settings',
    widget: (context, state) => const SettingsScreen(),
  ),


  RouterModel(
    name: 'Users',
    title: 'Users',
    description: 'Esto es la pantalla de usuarios',
    path: '/users',
    widget: (context, state) => const UsersScreen(),
  ),


  RouterModel(
    name: 'Products',
    title: 'Products',
    description: 'Esto es la pantalla de productos',
    path: '/products',
    widget: (context, state) => const ProductScreen(),
  ),

  RouterModel(
    name: 'Productos 2',
    title: 'Producto 2',
    description: 'Esto es la pantalla de productos 2',
    path: '/productoS2',
    widget: (context, state) => ProductoScreen(),
  ),

];
