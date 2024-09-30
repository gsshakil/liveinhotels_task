part of 'upcoming_events_cubit.dart';

sealed class UpcomingEventsState extends Equatable {
  const UpcomingEventsState();

  @override
  List<Object> get props => [];
}

final class UpcomingEventsInitial extends UpcomingEventsState {}


final class UpcomingEventsLoading extends UpcomingEventsState {}

final class UpcomingEventsError extends UpcomingEventsState {
  final String error;
  const UpcomingEventsError({required this.error});
}

final class UpcomingEventsSuccess extends UpcomingEventsState {
  final List<EventModel> events;
  const UpcomingEventsSuccess({required this.events});
}