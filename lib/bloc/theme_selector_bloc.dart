
import 'package:bloc_task4/app_theme.dart';
import 'package:bloc_task4/theme_cache_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_selector_event.dart';
part 'theme_selector_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    on<ThemeEvent>(
      (event, emit) async {
        if (event is GetCurrentThemeEvent) {
          final themeIndex = await ThemeCacheHelper().getCachedThemeIndex();
          final theme = AppTheme.values.firstWhere(
            (element) => element.index == themeIndex,
          );
          emit(LoadedThemeState(themeData: themesList[theme]!));
        } else if (event is ChangedThemeEvent) {
          final themeIndex = event.theme.index;
          ThemeCacheHelper().cacheThemeIndex(themeIndex);
          emit(LoadedThemeState(themeData: themesList[event.theme]!));
        }
      },
    );
  }
}
