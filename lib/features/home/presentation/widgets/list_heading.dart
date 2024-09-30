
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liveinhotels_task/core/extensions/text_style_extensions.dart';

class ListHeading extends StatelessWidget {
  const ListHeading({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: textTheme.titleMedium?.bold().copyWith(fontSize: 20),
          ),
          TextButton(
            onPressed: onTap,
            child: Container(
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(
                  color: colorScheme.onSurface.withOpacity(0.7),
                ),
              )),
              child: Text(
                'See All',
                style: textTheme.labelMedium!.copyWith(
                  color: colorScheme.onSurface.withOpacity(0.7),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}