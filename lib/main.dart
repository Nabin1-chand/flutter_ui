import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practise_flutter_ui/bloc/counter_bloc.dart';
import 'package:practise_flutter_ui/bloc/dummydata_controller.dart';
import 'package:practise_flutter_ui/bloc/dummydata_event_screen.dart';
import 'package:practise_flutter_ui/bloc1/controller/product_repositery.dart';
import 'package:practise_flutter_ui/bloc1/event/product_event.dart';
import 'package:practise_flutter_ui/bloc1/product_blo/product_bloc.dart';
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
        BlocProvider<ProductBloc>(create: (context) => ProductBloc())
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
