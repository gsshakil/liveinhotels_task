import 'package:dartz/dartz.dart';
import 'package:liveinhotels_task/core/helpers/failure.dart';
import 'package:liveinhotels_task/features/home/data/models/event_model.dart';

abstract class EventRepository {
  Future<Either<Failure, List<EventModel>>> getRecommendedEvents();
  Future<Either<Failure, List<EventModel>>> getUpcomingEvents();
}
