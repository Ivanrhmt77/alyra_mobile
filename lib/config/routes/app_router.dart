import 'package:alyra_mobile/features/auth/presentation/pages/login_page.dart';
import 'package:alyra_mobile/features/auth/presentation/pages/register_page.dart';
import 'package:alyra_mobile/features/main/presentation/pages/main_page.dart';
import 'package:alyra_mobile/features/notification/presentation/pages/notification_page.dart';
import 'package:alyra_mobile/features/post/presentation/pages/post_page.dart';
import 'package:alyra_mobile/features/setting/presentation/pages/setting_page.dart';
import 'package:flutter/material.dart';
import 'app_routes.dart';

class AppRouter {
  const AppRouter._();

  static Route<dynamic> generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case AppRoutes.register:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      case AppRoutes.main:
        return MaterialPageRoute(builder: (_) => const MainPage());
      case AppRoutes.notification:
        return MaterialPageRoute(builder: (_) => const NotificationPage());
      case AppRoutes.setting:
        return MaterialPageRoute(builder: (_) => const SettingPage());
      case AppRoutes.post:
        return MaterialPageRoute(
          builder: (_) => const PostPage(),
          fullscreenDialog: true,
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
