import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practise_flutter_ui/bloc_counter_theme_data/counter_view.dart';
import 'package:practise_flutter_ui/bloc_counter_theme_data/theme_cubit.dart';

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
      builder: (context, theme) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: theme,
          home: const Counterview(),
        );
      },
    );
  }
}
