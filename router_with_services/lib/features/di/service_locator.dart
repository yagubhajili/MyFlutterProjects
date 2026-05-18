import 'package:get_it/get_it.dart';
import 'package:router_with_services/features/services/go_router_navigation_service.dart';
import 'package:router_with_services/features/services/navigator_router_service.dart';

final locator = GetIt.instance;

void setupLocator() {
  // Register as a singleton so the same instance is used app-wide
  locator.registerSingleton<NavigatorRouterService>(
    GoRouterNavigationService(),
  );
}
