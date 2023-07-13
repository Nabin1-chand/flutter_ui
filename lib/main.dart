import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practise_flutter_ui/bloc/counter_bloc.dart';
import 'package:practise_flutter_ui/bloc/dummydata_controller.dart';
import 'package:practise_flutter_ui/bloc/dummydata_event_screen.dart';
import 'package:practise_flutter_ui/bloc1/controller/product_repositery.dart';
import 'package:practise_flutter_ui/bloc1/event/product_event.dart';
import 'package:practise_flutter_ui/bloc1/product_blo/product_bloc.dart';
import 'package:practise_flutter_ui/bloc_counter_theme_data/bloc_event/bloc_event.dart';
import 'package:practise_flutter_ui/bloc_counter_theme_data/theme_cubit.dart';
import 'package:practise_flutter_ui/bloc_pagination/cubit/post_cubit.dart';
import 'package:practise_flutter_ui/bloc_pagination/repositery/post_repositoy.dart';
import 'package:practise_flutter_ui/bloc_pagination/screen/model/post_service.dart';
import 'package:practise_flutter_ui/home_page_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<DummyDataCubit>(create: (context) => DummyDataCubit()),
        BlocProvider<ProductBloc>(create: (context) => ProductBloc()),
        BlocProvider<ThemeCubit>(create: (context) => ThemeCubit()),
        BlocProvider<CounterBloc>(create: (_) => CounterBloc()),
        BlocProvider<PostCubit>(
            create: (_) => PostCubit(PostRepository(PostService()))),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: const HomePageScreen(),
      ),
    );
  }
}
