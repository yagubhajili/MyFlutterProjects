import 'package:flutter/material.dart';
import 'package:router_with_services/features/di/service_locator.dart';
import 'package:router_with_services/features/services/navigator_router_service.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: locator<NavigatorRouterService>().routerConfig,
    );
  }
}
