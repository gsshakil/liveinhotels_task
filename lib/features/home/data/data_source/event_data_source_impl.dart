import 'package:liveinhotels_task/features/home/data/data_source/event_data.dart';
import 'package:liveinhotels_task/features/home/data/data_source/event_data_source.dart';
import 'package:liveinhotels_task/features/home/data/data_source/upcoming_event_data.dart';
import 'package:liveinhotels_task/features/home/data/models/event_model.dart';

class EventDataSourceImpl extends EventDataSource {
  @override
  Future<List<EventModel>> getRecommendedEvents() async {
    Future.delayed(const Duration(seconds: 2));
    return eventData;
  }

  @override
  Future<List<EventModel>> getUpcomingEvents() async {
    Future.delayed(const Duration(seconds: 2));
    return upcomingEventData;
  }
}
