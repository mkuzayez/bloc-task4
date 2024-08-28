import 'package:bloc_task4/bloc/theme_selector_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter/material.dart';
import './app_theme.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: AppTheme.values.length,
        itemBuilder: (context, index) {
          final themeItem = AppTheme.values[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              title: Text(
                themeItem.name,
                style: const TextStyle(color: Colors.white),
              ),
              tileColor: themesList[themeItem]!.primaryColor,
              onTap: () {
                context.read<ThemeBloc>().add(
                      ChangedThemeEvent(theme: themeItem),
                    );
              },
            ),
          );
        },
      ),
    );
  }
}
