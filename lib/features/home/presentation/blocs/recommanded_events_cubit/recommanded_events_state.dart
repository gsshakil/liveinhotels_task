part of 'recommanded_events_cubit.dart';

sealed class RecommendedEventsState extends Equatable {
  const RecommendedEventsState();

  @override
  List<Object> get props => [];
}

final class RecommendedEventsInitial extends RecommendedEventsState {}

final class RecommendedEventsLoading extends RecommendedEventsState {}

final class RecommendedEventsError extends RecommendedEventsState {
  final String error;
  const RecommendedEventsError({required this.error});
}

final class RecommendedEventsSuccess extends RecommendedEventsState {
  final List<EventModel> events;
  const RecommendedEventsSuccess({required this.events});
}
