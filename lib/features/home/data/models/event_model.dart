import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class EventModel extends Equatable {
  final int id;
  final String title;
  final DateTime dateTime;
  final String tag;
  final Widget tagIcon;
  final String imagePath;
  final String eventStartTime;
  final String eventEndTime;

  const EventModel(
      {required this.id,
      required this.title,
      required this.dateTime,
      required this.tag,
      required this.tagIcon,
      required this.imagePath,
      required this.eventStartTime,
      required this.eventEndTime});

  @override
  List<Object?> get props => [
        id,
        title,
        dateTime,
        tag,
        tagIcon,
        imagePath,
        eventStartTime,
        eventEndTime,
      ];
}
