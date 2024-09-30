// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:liveinhotels_task/core/helpers/failure.dart';
import 'package:liveinhotels_task/features/home/data/models/event_model.dart';
import 'package:liveinhotels_task/features/home/domain/use_cases/get_upcoming_events_usecase.dart';

part 'upcoming_events_state.dart';

class UpcomingEventsCubit extends Cubit<UpcomingEventsState> {
  final GetUpcomingEventsUseCase getUpcomingEventsUseCase;
  UpcomingEventsCubit({required this.getUpcomingEventsUseCase})
      : super(UpcomingEventsInitial());

  void getUpcomingEvents() async {
    emit(UpcomingEventsLoading());
    final Either<Failure, List<EventModel>> result =
        await getUpcomingEventsUseCase();

    result.fold(
      (l) => emit(UpcomingEventsError(error: l.toString())),
      (r) => emit(UpcomingEventsSuccess(events: r)),
    );
  }
}
