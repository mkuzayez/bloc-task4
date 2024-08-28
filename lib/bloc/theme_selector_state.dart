part of 'theme_selector_bloc.dart';

sealed class ThemeState extends Equatable {
  const ThemeState();

  @override
  List<Object> get props =>
      []; // if the same active Theme were chose again, this will avoid a rebuild
}

final class ThemeInitial extends ThemeState {}

class LoadedThemeState extends ThemeState {
  final ThemeData themeData;

  const LoadedThemeState({required this.themeData});

  @override
  List<Object> get props => [themeData];
}
