import 'package:dartz/dartz.dart';
import 'package:liveinhotels_task/core/helpers/exceptions.dart';
import 'package:liveinhotels_task/core/helpers/failure.dart';
import 'package:liveinhotels_task/features/home/data/data_source/event_data_source.dart';
import 'package:liveinhotels_task/features/home/data/models/event_model.dart';
import 'package:liveinhotels_task/features/home/domain/repository/event_repository.dart';

class EventRepositoryImpl extends EventRepository {
  final EventDataSource eventDataSource;

  EventRepositoryImpl({required this.eventDataSource});

  @override
  Future<Either<Failure, List<EventModel>>> getRecommendedEvents() async {
    try {
      List<EventModel> result = await eventDataSource.getRecommendedEvents();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ExceptionFailure(exception: e));
    }
  }

  @override
  Future<Either<Failure, List<EventModel>>> getUpcomingEvents() async {
    try {
      List<EventModel> result = await eventDataSource.getUpcomingEvents();
      return Right(result);
    } on ServerException catch (e) {
      return Left(ExceptionFailure(exception: e));
    }
  }
}
