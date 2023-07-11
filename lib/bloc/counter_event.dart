import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practise_flutter_ui/bloc/api_data/api_constant.dart';
import 'package:practise_flutter_ui/bloc/counter_bloc.dart';
import 'package:practise_flutter_ui/bloc/dummydata_controller.dart';

class MyCounterCubit extends StatefulWidget {
  const MyCounterCubit({super.key});

  @override
  State<MyCounterCubit> createState() => _MyCounterCubitState();
}

class _MyCounterCubitState extends State<MyCounterCubit> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<DummyDataCubit>(context, listen: false).fetchDummyData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: BlocBuilder<CounterCubit, int>(
      //   builder: (context, count) {
      //     return Center(child: Text('$count'));
      //   },
      // ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            heroTag: 'btn1',
            onPressed: () {
              // context.read<CounterCubit>().increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 20,
          ),
          FloatingActionButton(
            heroTag: 'btn2',
            onPressed: () {
              // context.read<CounterCubit>().decrement();
              DioClient().getAllProduct();
            },
            child: const Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}


// abstract class CounterEvent extends Equatable {
//   const CounterEvent();
//   @override
//   List<Object> get props => [];
// }

// class IncrementCounter extends CounterEvent {}

// class DecrementCounter extends CounterEvent {}
