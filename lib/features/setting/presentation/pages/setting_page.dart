import 'package:alyra_mobile/core/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:alyra_mobile/core/extensions/text_styles_extensions.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeCubit = context.read<ThemeCubit>();

    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Theme Mode', style: context.h4()),
                const SizedBox(height: 16),
                RadioListTile<AppThemeMode>(
                  title: const Text('System'),
                  value: AppThemeMode.system,
                  groupValue: state.mode,
                  onChanged: (mode) {
                    if (mode != null) themeCubit.setMode(mode);
                  },
                ),
                RadioListTile<AppThemeMode>(
                  title: const Text('Light'),
                  value: AppThemeMode.light,
                  groupValue: state.mode,
                  onChanged: (mode) {
                    if (mode != null) themeCubit.setMode(mode);
                  },
                ),
                RadioListTile<AppThemeMode>(
                  title: const Text('Dark'),
                  value: AppThemeMode.dark,
                  groupValue: state.mode,
                  onChanged: (mode) {
                    if (mode != null) themeCubit.setMode(mode);
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
