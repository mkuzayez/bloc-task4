import 'package:bloc_task4/bloc/theme_selector_bloc.dart';
import 'package:bloc_task4/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => ThemeBloc()..add(GetCurrentThemeEvent()),
    child: BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        if (state is LoadedThemeState) {
          return MaterialApp(
            theme: state.themeData,
            home: const HomeScreen(),
          );
        }
        return Container();
      },
    ),
  ));
}
