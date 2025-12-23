import 'package:alyra_mobile/core/extensions/text_styles_extensions.dart';
import 'package:flutter/material.dart';
import '../../../../config/routes/app_routes.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => Navigator.pushNamed(context, AppRoutes.setting),
          ),
        ],
      ),
      body: Center(
        child: Text('User Profile Placeholder', style: context.h6()),
      ),
    );
  }
}
