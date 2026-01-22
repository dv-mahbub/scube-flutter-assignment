import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:scube_flutter_assignment/features/splash/presentation/view/splash_screen.dart';
import 'routes.dart';
part './parts/authentication_routes.dart';
part 'parts/home_routes.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'Root');

final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  debugLogDiagnostics: true,
  initialLocation: Routes.splash,
  routes: [..._authenticationRoutes(), ..._homeRoutes()],
);
