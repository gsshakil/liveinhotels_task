import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:liveinhotels_task/core/assets.dart';
import 'package:liveinhotels_task/core/extensions/widget_extensions.dart';
import 'package:liveinhotels_task/core/extensions/text_style_extensions.dart';
import 'package:liveinhotels_task/features/home/data/models/event_model.dart';

class UpcomingEventCard extends StatelessWidget {
  const UpcomingEventCard({
    super.key,
    required this.eventModel,
    this.isLast = false,
  });

  final EventModel eventModel;
  final bool isLast;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Row(
      // crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: colorScheme.onSurface.withOpacity(0.25),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
              margin: EdgeInsets.only(right: 10.w),
              child: Column(
                children: [
                  Text(
                      DateFormat(DateFormat.ABBR_MONTH)
                          .format(eventModel.dateTime)
                          .toUpperCase(),
                      style: textTheme.labelSmall!),
                  Text(
                    DateFormat(DateFormat.DAY).format(eventModel.dateTime),
                    style: textTheme.titleMedium!.bold(),
                  ),
                ],
              ),
            ),
            Container(
              transform: Matrix4.translationValues(-5, 0, 0),
              decoration: BoxDecoration(
                color: colorScheme.onSurface.withOpacity(isLast ? 0 : 0.25),
              ),
              height: ScreenUtil().screenHeight / 4.25,
              width: 1,
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: ScreenUtil().screenHeight / 5,
              width: ScreenUtil().screenWidth * 0.75,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  eventModel.imagePath,
                  fit: BoxFit.cover,
                ),
              ),
            ).padding(bottom: 10.h),
            Text(
              eventModel.title,
              style: textTheme.labelLarge?.bold(),
            ).padding(bottom: 5),
            Row(
              children: [
                const Icon(
                  Icons.access_time,
                  size: 18,
                ).padding(right: 5.w),
                Text(
                    '${eventModel.eventStartTime} - ${eventModel.eventEndTime}'),
              ],
            ),
          ],
        ).padding(bottom: 20.sp),
      ],
    );
  }
}
