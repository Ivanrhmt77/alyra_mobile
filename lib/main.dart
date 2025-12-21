import 'package:alyra_mobile/config/routes/app_router.dart';
import 'package:alyra_mobile/config/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'core/themes/app_theme.dart';
import 'core/utils/responsive.dart';

void main() {
  // setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        Responsive.init(context);

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Alyra Mobile',
          theme: AppTheme.light(),
          initialRoute: AppRoutes.feed,
          onGenerateRoute: AppRouter.generate,
        );
      },
    );
  }
}
