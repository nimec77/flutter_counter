import 'package:bloc_architecture_app/presentation/exceptions/route_exception.dart';
import 'package:flutter/material.dart';

import '../screens/counter_screen/counter_screen.dart';

class AppRouter {
  static const String counter = 'counter';

  const AppRouter._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case counter:
        return MaterialPageRoute(
          builder: (_) => const CounterScreen(),
        );
      default:
        throw const RouteException('Route not found!');
    }
  }
}
