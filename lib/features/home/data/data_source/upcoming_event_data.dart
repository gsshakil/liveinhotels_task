import 'package:flutter/material.dart';
import 'package:liveinhotels_task/core/assets.dart';
import 'package:liveinhotels_task/features/home/data/models/event_model.dart';

final upcomingEventData = [
  EventModel(
    id: 1,
    title: 'Learn to cook with Amanda',
    dateTime: DateTime.now(),
    tag: 'Workshops',
    tagIcon: const Icon(
      Icons.workspaces_sharp,
      size: 18,
    ),
    imagePath: Assets.event5,
    eventStartTime: '10:00',
    eventEndTime: '19:30',
  ),
  EventModel(
    id: 1,
    title: 'Cooking with James',
    dateTime: DateTime.now(),
    tag: 'Arts & Culture',
    tagIcon: const Icon(
      Icons.filter_frames_outlined,
      size: 18,
    ),
    imagePath: Assets.event4,
    eventStartTime: '7:00',
    eventEndTime: '10:30',
  ),
  EventModel(
    id: 1,
    title: 'Learn to cook with Amanda',
    dateTime: DateTime.now(),
    tag: 'Workshops',
    tagIcon: const Icon(
      Icons.workspaces_sharp,
      size: 18,
    ),
    imagePath: Assets.event3,
    eventStartTime: '10:00',
    eventEndTime: '19:30',
  ),
  EventModel(
    id: 1,
    title: 'Cooking with James',
    dateTime: DateTime.now(),
    tag: 'Arts & Culture',
    tagIcon: const Icon(
      Icons.filter_frames_outlined,
      size: 18,
    ),
    imagePath: Assets.event2,
    eventStartTime: '7:00',
    eventEndTime: '10:30',
  ),
];
