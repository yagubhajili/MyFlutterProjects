import 'package:flutter/material.dart';
import 'package:router_with_services/features/di/service_locator.dart';
import 'package:router_with_services/features/services/navigator_router_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                // No context needed!
                locator<NavigatorRouterService>().navigateTo('/splash');
              },
              child: const Text('Go to splash'),
            ),
            TextButton(
              onPressed: () {
                // No context needed!
                locator<NavigatorRouterService>().navigateTo('/login');
              },
              child: const Text('Go to Login'),
            ),
          ],
        ),
      ),
    );
  }
}
