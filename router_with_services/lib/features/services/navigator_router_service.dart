import 'package:flutter/widgets.dart';

abstract class NavigatorRouterService {
  RouterConfig<Object> get routerConfig;
  void navigateTo(String path, {Map<String, String>? queryParameters});
  void goBack();
}

