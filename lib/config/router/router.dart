import 'package:go_router/go_router.dart';
import 'package:router_go/config/router/router_config.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    ...routerConfig.map(
      (route){
        return GoRoute(
        path: route.path,
        name: route.name,
        builder: (context, state) => route.widget(context, state),
      );
    }),
  ],
);
