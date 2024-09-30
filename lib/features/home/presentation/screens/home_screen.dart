import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liveinhotels_task/core/extensions/widget_extensions.dart';
import 'package:liveinhotels_task/features/home/data/data_source/event_data.dart';
import 'package:liveinhotels_task/features/home/data/data_source/upcoming_event_data.dart';
import 'package:liveinhotels_task/features/home/presentation/widgets/event_card.dart';
import 'package:liveinhotels_task/features/home/presentation/widgets/home_heading.dart';
import 'package:liveinhotels_task/features/home/presentation/widgets/home_search_bar.dart';
import 'package:liveinhotels_task/features/home/presentation/widgets/list_heading.dart';
import 'package:liveinhotels_task/features/home/presentation/widgets/location_and_profile_avatar.dart';
import 'package:liveinhotels_task/features/home/presentation/widgets/upcoming_event_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.primary,
      drawer: const Drawer(),
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
                  SizedBox(height: 50.h),
                  // LOCATION & PROFILE PICTURE
                  const LocationAndProfileAvatar()
                      .paddingSymmetric(vertical: 20.h)
                      .animate()
                      .move(delay: 100.ms, duration: 1000.ms),
                  // HEADING
                  const HomeHeading().animate().fade(duration: 1000.ms),
                  // SEARCH BAR
                  const HomeSearchBar().animate().fadeIn().scale().move(
                        delay: 300.ms,
                        duration: 1000.ms,
                      ),
                ],
              ),
            ),
          ])),
          SliverToBoxAdapter(
            child: Container(
              color: colorScheme.surface,
              child: Column(
                children: [
                  // YOU MIGHT LIKE SECTION
                  ListHeading(
                    title: 'You might like',
                    onTap: () {},
                  )
                      .padding(bottom: 5)
                      .animate()
                      .animate()
                      .fade(duration: 2000.ms),
              
                  // EVENTS HORIZONTAL LIST
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
                  ).animate().fade(duration: 1000.ms),
                  SizedBox(height: 10.h),
              
                  // UPCOMING EVENTS HEADING
                  ListHeading(title: 'Upcoming events', onTap: () {})
                      .padding(bottom: 5)
                      .animate()
                      .animate()
                      .fade(duration:2000.ms),
                ],
              ),
            ),
          ),

          // UPCOMING EVENTS LIST
          SliverList(
              delegate: SliverChildBuilderDelegate(
            childCount: upcomingEventData.length,
            (context, index) {
              return Container(
                color: colorScheme.surface,
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: UpcomingEventCard(
                  eventModel: upcomingEventData[index],
                  isLast: index == upcomingEventData.length - 1,
                ),
              );
            },
          )),

          // EXTRA BOTTOM SPACE
          SliverToBoxAdapter(
            child: Container(
              color: colorScheme.surface,
              height: 100.h,
            ),
          ),
        ],
      ),
    );
  }
}
