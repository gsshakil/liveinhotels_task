import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:liveinhotels_task/core/extensions/text_style_extensions.dart';
import 'package:liveinhotels_task/core/extensions/widget_extensions.dart';
import 'package:liveinhotels_task/features/home/data/models/event_model.dart';

class EventCard extends StatelessWidget {
  const EventCard({
    super.key,
    required this.eventModel,
  });

  final EventModel eventModel;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return SizedBox(
      width: ScreenUtil().screenWidth * 0.7,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              //bg image
              SizedBox(
                height: ScreenUtil().screenHeight / 5,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    eventModel.imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //date
              Positioned(
                left: 10,
                top: 10,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFF88879B)),
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
                  child: Column(
                    children: [
                      Text(
                        DateFormat(DateFormat.ABBR_MONTH)
                            .format(eventModel.dateTime)
                            .toUpperCase(),
                        style: textTheme.labelSmall!.copyWith(
                          color: colorScheme.surface,
                        ),
                      ),
                      Text(
                         DateFormat(DateFormat.DAY).format(eventModel.dateTime),
                        style: textTheme.titleLarge!.bold().copyWith(
                              color: colorScheme.surface,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
              //tag
              Positioned(
                left: 10,
                bottom: 10,
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color(0xFFDCDECB)),
                  padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 3.h),
                  child: Row(
                    children: [
                      eventModel.tagIcon.padding(right: 5),
                      Text(
                        eventModel.tag,
                        style: textTheme.labelSmall,
                      ),
                    ],
                  ),
                ),
              ),
            ],
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
              Text('${eventModel.eventStartTime} - ${eventModel.eventEndTime}'),
            ],
          ),
        ],
      ).padding(right: 15.sp),
    );
  }
}
