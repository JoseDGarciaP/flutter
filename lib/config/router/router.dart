import 'package:go_router/go_router.dart';
import 'package:router_go/config/router/router_config.dart';
import 'package:router_go/presentation/screen/home/home_screen.dart';
import 'package:router_go/presentation/screen/shared/layout.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    ShellRoute(
      builder: (context, state, child) {
        String data = state.topRoute?.name ?? 'Administrador';
        return Layout(title: data, child: child);
      },
      routes: [
        ...routerConfig.map((route) {
          return GoRoute(
            path: route.path,
            name: route.name,
            builder: (context, state) => route.widget(context, state),
          );
        }),
      ],
    ),
  ],
  errorBuilder: (context, state) => HomeScreen()
);
