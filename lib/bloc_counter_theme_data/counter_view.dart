import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practise_flutter_ui/bloc_counter_theme_data/bloc_event/bloc_event.dart';
import 'package:practise_flutter_ui/bloc_counter_theme_data/theme_cubit.dart';

class Counterview extends StatelessWidget {
  const Counterview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter and Theme data'),
        centerTitle: true,
      ),
      body: BlocBuilder<CounterBloc, int>(
        builder: (context, state) {
          return Column(
            children: [
              Text('$state'),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(Increment());
                      },
                      child: const Text('Increment')),
                  ElevatedButton(
                      onPressed: () {
                        context.read<CounterBloc>().add(Decrement());
                      },
                      child: const Text('Decrement')),
                  ElevatedButton(
                      onPressed: () {
                        context.read<ThemeCubit>().toggleTheme();
                      },
                      child: const Text('enable mode'))
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
