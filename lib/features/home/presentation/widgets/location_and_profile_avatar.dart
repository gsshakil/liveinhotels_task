
import 'package:flutter/material.dart';
import 'package:liveinhotels_task/core/assets.dart';
import 'package:liveinhotels_task/core/theme/theme_controller.dart';
import 'package:liveinhotels_task/features/home/presentation/widgets/home_location_section.dart';

class LocationAndProfileAvatar extends StatelessWidget {
  const LocationAndProfileAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //location
          const HomeLocationSection(),
          // profile pic drawer button
          GestureDetector(
            onTap: () => ThemeController.toggleThemeMode(),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.transparent,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  Assets.profileIcon,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}