import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practise_flutter_ui/bloc/abstract_model.dart';
import 'package:practise_flutter_ui/bloc/dummydata_controller.dart';

class DummyDataEventScreen extends StatefulWidget {
  const DummyDataEventScreen({super.key});

  @override
  State<DummyDataEventScreen> createState() => _DummyDataEventScreenState();
}

class _DummyDataEventScreenState extends State<DummyDataEventScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<DummyDataCubit>(context).fetchDummyData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cubit Data',
        ),
        centerTitle: true,
      ),
      body: BlocConsumer<DummyDataCubit, DummyEvent>(
          builder: (context, state) {
            if (state is LoadingState) {
              return const CircularProgressIndicator();
            }
            if (state is LoadedState) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: state.dummuyModel.length,
                itemBuilder: (context, index) {
                  return Text(state.dummuyModel[index].brand.toString());
                },
              );
            }
            if (state is ErrorState) {
              return Text(state.message);
            }
            return const Center(child: Text('Hello Cubit'));
          },
          listener: (context, state) {}),
    );
  }
}
