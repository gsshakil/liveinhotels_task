
import 'package:flutter/material.dart';
import 'package:liveinhotels_task/core/extensions/text_style_extensions.dart';


class HomeLocationSection extends StatelessWidget {
  const HomeLocationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'New York',
              style: textTheme.labelLarge?.bold(),
            ),
            const Icon(Icons.keyboard_arrow_down)
          ],
        ),
        Text(
          'within 20 miles',
          style: textTheme.labelMedium!.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7)),
        ),
      ],
    );
  }
}