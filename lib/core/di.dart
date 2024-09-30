import 'package:get_it/get_it.dart';
import 'package:liveinhotels_task/features/home/data/data_source/event_data_source.dart';
import 'package:liveinhotels_task/features/home/data/data_source/event_data_source_impl.dart';
import 'package:liveinhotels_task/features/home/data/repository/event_repository_impl.dart';
import 'package:liveinhotels_task/features/home/domain/repository/event_repository.dart';
import 'package:liveinhotels_task/features/home/domain/use_cases/get_recommanded_events_usecase.dart';
import 'package:liveinhotels_task/features/home/domain/use_cases/get_upcoming_events_usecase.dart';
import 'package:liveinhotels_task/features/home/presentation/blocs/recommanded_events_cubit/recommanded_events_cubit.dart';
import 'package:liveinhotels_task/features/home/presentation/blocs/upcoming_events_cubit/upcoming_events_cubit.dart';

final injector = GetIt.instance;

Future<void> injectDependencies() async {
  injector.registerLazySingleton<EventDataSource>(() => EventDataSourceImpl());

  injector.registerLazySingleton<EventRepository>(
      () => EventRepositoryImpl(eventDataSource: injector()));

  injector.registerLazySingleton<GetRecommendedEventsUseCase>(
      () => GetRecommendedEventsUseCase(eventRepository: injector()));

  injector.registerLazySingleton<GetUpcomingEventsUseCase>(
      () => GetUpcomingEventsUseCase(eventRepository: injector()));

  injector.registerLazySingleton<RecommandedEventsCubit>(
    () => RecommandedEventsCubit(
      getRecommendedEventsUseCase: injector(),
    ),
  );

  injector.registerLazySingleton<UpcomingEventsCubit>(
    () => UpcomingEventsCubit(
      getUpcomingEventsUseCase: injector(),
    ),
  );
}
