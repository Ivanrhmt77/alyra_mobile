import 'package:alyra_mobile/features/main/presentation/widgets/main_bottom_navbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/main_cubit.dart';
import '../cubit/main_state.dart';

import '../../../feed/presentation/pages/feed_page.dart';
import '../../../profile/presentation/pages/profile_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  static final _pages = {
    MainTab.home: const FeedPage(),
    MainTab.profile: const ProfilePage(),
  };

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MainCubit(),
      child: BlocBuilder<MainCubit, MainTab>(
        builder: (context, tab) {
          return Scaffold(
            body: _pages[tab],
            bottomNavigationBar: const MainBottomNavbar(),
          );
        },
      ),
    );
  }
}
