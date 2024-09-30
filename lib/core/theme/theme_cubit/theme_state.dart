part of 'theme_cubit.dart';

@immutable
sealed class ThemeState {}

final class ThemeInitial extends ThemeState {}

final class ThemeLoading extends ThemeState {}

final class ThemeError extends ThemeState {
  final String error;

  ThemeError({required this.error});
}

final class ThemeSuccess extends ThemeState {}
