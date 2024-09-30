// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:liveinhotels_task/core/helpers/failure.dart';
import 'package:liveinhotels_task/features/home/data/models/event_model.dart';
import 'package:liveinhotels_task/features/home/domain/use_cases/get_recommanded_events_usecase.dart';

part 'recommanded_events_state.dart';

class RecommandedEventsCubit extends Cubit<RecommendedEventsState> {
  final GetRecommendedEventsUseCase getRecommendedEventsUseCase;
  RecommandedEventsCubit({required this.getRecommendedEventsUseCase})
      : super(RecommendedEventsInitial());

  void getRecommendedEvents() async {
    emit(RecommendedEventsLoading());
    final Either<Failure, List<EventModel>> result =
        await getRecommendedEventsUseCase();

    result.fold(
      (l) => emit(RecommendedEventsError(error: l.toString())),
      (r) => emit(RecommendedEventsSuccess(events: r)),
    );
  }
}
