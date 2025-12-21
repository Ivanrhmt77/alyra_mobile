import 'package:flutter/material.dart';
import 'app_routes.dart';
import '../../features/feed/presentation/pages/feed_page.dart';

class AppRouter {
  const AppRouter._();

  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.feed:
        return MaterialPageRoute(
          builder: (_) => const FeedPage(),
          settings: settings,
        );

      default:
        return _unknownRoute();
    }
  }

  static Route<dynamic> _unknownRoute() {
    return MaterialPageRoute(
      builder: (_) =>
          const Scaffold(body: Center(child: Text('Route not found'))),
    );
  }
}
