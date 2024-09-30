import 'package:liveinhotels_task/features/home/data/models/event_model.dart';

abstract class EventDataSource{
  Future<List<EventModel>> getRecommendedEvents();
  Future<List<EventModel>> getUpcomingEvents();
}