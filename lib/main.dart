import 'package:alyra_mobile/config/routes/app_router.dart';
import 'package:alyra_mobile/config/routes/app_routes.dart';
import 'package:alyra_mobile/core/cubit/theme_cubit.dart';
import 'package:alyra_mobile/core/cubit/theme_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/themes/app_theme.dart';
import 'core/utils/responsive.dart';

void main() {
  runApp(BlocProvider(create: (_) => ThemeCubit(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, themeMode) {
        Responsive.init(context);

        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Alyra Mobile',
          theme: AppTheme.light(),
          darkTheme: AppTheme.dark(),
          themeMode: context.read<ThemeCubit>().themeMode,
          initialRoute: AppRoutes.login,
          onGenerateRoute: AppRouter.generate,
        );
      },
    );
  }
}
