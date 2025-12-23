import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../../config/routes/app_routes.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/app_sizing.dart';
import '../../../../core/widgets/app_icon.dart';
import '../cubit/main_cubit.dart';
import '../cubit/main_state.dart';
import 'navbar_item.dart';

class MainBottomNavbar extends StatelessWidget {
  const MainBottomNavbar({super.key});

  List<NavbarItem> _items(BuildContext context) {
    return [
      const NavbarItem.tab(icon: Symbols.home, tab: MainTab.home),
      NavbarItem.action(
        icon: Symbols.add_circle,
        onTap: () {
          Navigator.pushNamed(context, AppRoutes.post);
        },
      ),
      const NavbarItem.tab(icon: Symbols.person, tab: MainTab.profile),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final activeTab = context.select((MainCubit c) => c.state);
    final items = _items(context);

    final currentIndex = items.indexWhere(
      (item) => item.type == NavItemType.tab && item.tab == activeTab,
    );

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: currentIndex < 0 ? 0 : currentIndex,
      onTap: (index) {
        final item = items[index];

        if (item.type == NavItemType.tab) {
          context.read<MainCubit>().changeTab(item.tab!);
        } else {
          item.onTap?.call();
        }
      },
      items: items.map((item) {
        return BottomNavigationBarItem(
          icon: _buildIcon(item, activeTab),
          label: '',
        );
      }).toList(),
    );
  }

  Widget _buildIcon(NavbarItem item, MainTab activeTab) {
    switch (item.type) {
      case NavItemType.tab:
        final isActive = item.tab == activeTab;
        return AppIcon(item.icon, active: isActive, size: AppSizing.w28);

      case NavItemType.action:
        return AppIcon(
          item.icon,
          active: true,
          color: AppColors.primary500,
          size: AppSizing.w32,
        );
    }
  }
}
