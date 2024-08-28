part of 'theme_selector_bloc.dart';

sealed class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class GetCurrentThemeEvent extends ThemeEvent {}

class ChangedThemeEvent extends ThemeEvent {
  final AppTheme theme;

  ChangedThemeEvent({required this.theme});

  @override
  List<Object> get props => [theme];
}
