import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liveinhotels_task/features/home/presentation/screens/home_screen.dart';
import 'package:liveinhotels_task/core/value_notifiers.dart';
import 'package:liveinhotels_task/features/inbox/presentation/screens/inbox_screeen.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class AppLandingScreen extends StatelessWidget {
  const AppLandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    return ValueListenableBuilder(
        valueListenable: bottomNavBarSelectedTab,
        builder: (context, value, child) {
          return Scaffold(
            body: PersistentTabView(
              navBarHeight: 50.h,
              onTabChanged: (value) {
                bottomNavBarSelectedTab.value = value;
              },
              tabs: [
                PersistentTabConfig(
                  screen: const HomeScreen(),
                  item: ItemConfig(
                    title: 'Home',
                    activeForegroundColor: colorScheme.onSurface,
                    icon: Icon(
                      Icons.home,
                      color: bottomNavBarSelectedTab.value == 0
                          ? Theme.of(context).colorScheme.onSurface
                          : Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withOpacity(0.5),
                    ),
                    opacity: 0.9,
                  ),
                ),
                PersistentTabConfig(
                  screen: const InboxScreen(),
                  item: ItemConfig(
                    title: 'Inbox',
                    activeForegroundColor: colorScheme.onSurface,
                    icon: Icon(
                      Icons.message,
                      color: bottomNavBarSelectedTab.value == 1
                          ? Theme.of(context).colorScheme.onSurface
                          : Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withOpacity(0.5),
                    ),
                    opacity: 0.9,
                  ),
                ),
                PersistentTabConfig(
                  screen: const InboxScreen(),
                  item: ItemConfig(
                    title: 'Explore',
                    activeForegroundColor: colorScheme.onSurface,
                    icon: Icon(
                      Icons.explore,
                      color: bottomNavBarSelectedTab.value == 2
                          ? Theme.of(context).colorScheme.onSurface
                          : Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withOpacity(0.5),
                    ),
                    opacity: 0.9,
                  ),
                ),
                PersistentTabConfig(
                  screen: const InboxScreen(),
                  item: ItemConfig(
                    title: 'Alerts',
                    activeForegroundColor: colorScheme.onSurface,
                    icon: Icon(
                      Icons.notifications,
                      color: bottomNavBarSelectedTab.value == 3
                          ? Theme.of(context).colorScheme.onSurface
                          : Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withOpacity(0.5),
                    ),
                    opacity: 0.9,
                  ),
                ),
                PersistentTabConfig(
                  screen: const InboxScreen(),
                  item: ItemConfig(
                    title: 'Menu',
                    activeForegroundColor: colorScheme.onSurface,
                    icon: Icon(
                      Icons.menu,
                      color: bottomNavBarSelectedTab.value == 4
                          ? Theme.of(context).colorScheme.onSurface
                          : Theme.of(context)
                              .colorScheme
                              .onSurface
                              .withOpacity(0.5),
                    ),
                    opacity: 0.9,
                  ),
                ),
              ],
              navBarBuilder: (navBarConfig) => Style1BottomNavBar(
                navBarConfig: navBarConfig,
                navBarDecoration: NavBarDecoration(
                  color: Theme.of(context).colorScheme.surface.withOpacity(0.5),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 0),
                      blurRadius: 70,
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
