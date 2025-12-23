import 'package:alyra_mobile/core/extensions/text_styles_extensions.dart';
import 'package:alyra_mobile/core/widgets/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Post', style: context.h7()),
        leading: IconButton(
          icon: const AppIcon(Symbols.close),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Center(
        child: Text('Post Content Placeholder', style: context.h6()),
      ),
    );
  }
}
