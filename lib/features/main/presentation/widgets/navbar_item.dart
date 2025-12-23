import 'package:flutter/material.dart';
import '../cubit/main_state.dart';

enum NavItemType { tab, action }

class NavbarItem {
  final IconData icon;
  final NavItemType type;
  final MainTab? tab;
  final VoidCallback? onTap;

  const NavbarItem.tab({required this.icon, required this.tab})
    : type = NavItemType.tab,
      onTap = null;

  const NavbarItem.action({required this.icon, required this.onTap})
    : type = NavItemType.action,
      tab = null;
}
