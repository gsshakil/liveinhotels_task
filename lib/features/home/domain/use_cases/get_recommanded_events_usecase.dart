import 'package:dartz/dartz.dart';
import 'package:liveinhotels_task/core/helpers/failure.dart';
import 'package:liveinhotels_task/features/home/data/models/event_model.dart';
import 'package:liveinhotels_task/features/home/domain/repository/event_repository.dart';

class GetRecommendedEventsUseCase {
  EventRepository eventRepository;

  GetRecommendedEventsUseCase({required this.eventRepository});

  Future<Either<Failure, List<EventModel>>> call() async {
    return await eventRepository.getRecommendedEvents();
  }
}
