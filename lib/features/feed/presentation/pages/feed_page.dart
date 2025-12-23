import 'package:alyra_mobile/config/routes/app_routes.dart';
import 'package:alyra_mobile/core/extensions/semantic_colors_extensions.dart';
import 'package:alyra_mobile/core/extensions/text_styles_extensions.dart';
import 'package:alyra_mobile/core/themes/app_padding.dart';
import 'package:alyra_mobile/core/themes/app_radius.dart';
import 'package:alyra_mobile/core/themes/app_sizing.dart';
import 'package:alyra_mobile/core/themes/app_spacing.dart';
import 'package:alyra_mobile/core/themes/app_text_styles.dart';
import 'package:flutter/material.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () =>
                Navigator.pushNamed(context, AppRoutes.notification),
          ),
        ],
      ),
      body: ListView.separated(
        padding: AppPadding.pxy(
          horizontal: AppSizing.w24,
          vertical: AppSizing.h32,
        ),
        itemCount: 9,
        separatorBuilder: (context, index) => SizedBox(height: AppSpacing.s24),
        itemBuilder: (context, index) {
          if (index == 1) {
            return Container(
              color: context.semantic.surface,
              padding: AppPadding.p56,
              child: Text('Ch', style: context.h2()),
            );
          } else if (index == 2) {
            return Container(
              width: AppSizing.w96,
              height: AppSizing.h96,
              decoration: BoxDecoration(
                color: context.semantic.divider,
                borderRadius: AppRadius.r16,
              ),
              child: Center(
                child: Text(
                  'Ch',
                  style: context.h7(color: context.semantic.textSecondary),
                ),
              ),
            );
          }
          return Container(
            color: context.semantic.surface,
            padding: AppPadding.p56,
            child: Text('Ch', style: AppTextStyles.h2(context)),
          );
        },
      ),
    );
  }
}
