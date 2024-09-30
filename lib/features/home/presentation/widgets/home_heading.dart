import 'package:flutter/material.dart';
import 'package:liveinhotels_task/core/extensions/widget_extensions.dart';
import 'package:liveinhotels_task/core/extensions/text_style_extensions.dart';

class HomeHeading extends StatelessWidget {
  const HomeHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello, Simon',
            style: textTheme.headlineLarge?.bold(),
          ).padding(bottom: 5),
          Text(
            'There are 25 new events in your area.',
            style: textTheme.headlineLarge
                ?.bold()
                .copyWith(color: colorScheme.primary),
          ),
        ],
      ),
    );
  }
}
