import 'package:alyra_mobile/core/extensions/text_styles_extensions.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notifications', style: context.h7())),
      body: Center(child: Text("Notif Placeholder", style: context.h6())),
    );
  }
}
