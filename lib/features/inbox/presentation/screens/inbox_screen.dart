import 'package:flutter/material.dart';

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Inbox',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
    );
  }
}
