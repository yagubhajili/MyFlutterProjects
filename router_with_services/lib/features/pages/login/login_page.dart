import 'package:flutter/material.dart';
import 'package:router_with_services/features/di/service_locator.dart';
import 'package:router_with_services/features/services/navigator_router_service.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Center(
        child: Column(
          children: [
            Text('Welcome to the Login Page!'),
            TextButton(
              onPressed: () {
                locator<NavigatorRouterService>().navigateTo('/splash');
              },
              child: Text('go to splash'),
            ),
          ],
        ),
      ),
    );
  }
}
