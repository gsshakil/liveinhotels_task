import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liveinhotels_task/core/extensions/widget_extensions.dart';
import 'package:liveinhotels_task/features/home/data/data_source/event_data.dart';
import 'package:liveinhotels_task/features/home/data/data_source/upcoming_event_data.dart';
import 'package:liveinhotels_task/features/home/presentation/widgets/event_card.dart';
import 'package:liveinhotels_task/features/home/presentation/widgets/home_heading.dart';
import 'package:liveinhotels_task/features/home/presentation/widgets/home_search_bar.dart';
import 'package:liveinhotels_task/features/home/presentation/widgets/list_heading.dart';
import 'package:liveinhotels_task/features/home/presentation/widgets/location_and_profile_avater.dart';
import 'package:liveinhotels_task/features/home/presentation/widgets/upcoming_event_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  colorScheme.primary.withOpacity(0.5),
                  colorScheme.surface,
                ],
                stops: const [0.0, 1],
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                tileMode: TileMode.repeated,
              )),
              child: Column(
                children: [
                  SizedBox(height: 30.h),
                  //location and profile pic button
                  const LocationAndProfileAvatar()
                      .paddingSymmetric(vertical: 20.h),
                  // headding
                  const HomeHeading(),
                  //Search Bar
                  const HomeSearchBar(),
                ],
              ),
            ),
          ])),
          SliverToBoxAdapter(
            child: Column(
              children: [
                //You might like section
                ListHeading(title: 'You might like', onTap: () {})
                    .padding(bottom: 5),

                //events horizontal list
                SizedBox(
                  height: ScreenUtil().screenHeight / 3.5,
                  child: ListView.builder(
                      padding: EdgeInsets.symmetric(horizontal: 20.sp),
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: eventData.length,
                      itemBuilder: (context, index) {
                        return EventCard(
                          eventModel: eventData[index],
                        );
                      }),
                ),
                SizedBox(height: 10.h),
                // Upcoming Events
                ListHeading(title: 'Upcoming events', onTap: () {})
                    .padding(bottom: 5),
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
            childCount: upcomingEventData.length,
            (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: UpcomingEventCard(
                  eventModel: upcomingEventData[index],
                  isLast: index == upcomingEventData.length - 1,
                ),
              );
            },
          )),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 100.h,
            ),
          ),
        ],
      ),
    );
  }
}
