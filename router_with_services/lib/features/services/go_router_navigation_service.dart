import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:router_with_services/features/pages/home/home_page.dart';
import 'package:router_with_services/features/pages/login/login_page.dart';
import 'package:router_with_services/features/pages/splash/splash_page.dart';
import 'package:router_with_services/features/services/navigator_router_service.dart';

class GoRouterNavigationService implements NavigatorRouterService {
  // We need a GlobalKey to navigate without BuildContext
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  late final GoRouter _router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: '/',
    routes: [
      GoRoute(path: '/', builder: (context, state) => const HomePage()),
      GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
      GoRoute(path: '/splash', builder: (context, state) => const SplashPage()),
    ],
  );

  @override
  RouterConfig<Object> get routerConfig => _router;

  @override
  void navigateTo(String path, {Map<String, String>? queryParameters}) {
    final location = (queryParameters == null || queryParameters.isEmpty)
        ? path
        : Uri(path: path, queryParameters: queryParameters).toString();
    _router.go(location);
  }

  @override
  void goBack() {
    if (_router.canPop()) _router.pop();
  }
}
