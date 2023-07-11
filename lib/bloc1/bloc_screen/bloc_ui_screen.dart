import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practise_flutter_ui/bloc1/event/product_event.dart';
import 'package:practise_flutter_ui/bloc1/product_blo/product_bloc.dart';
import 'package:practise_flutter_ui/bloc1/state/abstract_state.dart';

class ProductUiScreen extends StatefulWidget {
  const ProductUiScreen({super.key});

  @override
  State<ProductUiScreen> createState() => _ProductUiScreenState();
}

class _ProductUiScreenState extends State<ProductUiScreen> {
  @override
  void initState() {
    BlocProvider.of<ProductBloc>(context).add(LoadProductEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Bloc Screen'),
          centerTitle: true,
        ),
        body:
            BlocConsumer<ProductBloc, ProductState>(builder: (context, state) {
          if (state is ProductLoadingState) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is ProductLoadedState) {
            return ListView.builder(
                itemCount: state.products.length,
                itemBuilder: (context, index) {
                  return Text(state.products[0].price.toString());
                });
          }
          if (state is ProductErrorState) {
            return Text(state.error);
          }
          return Text('Helllo bloc');
        }, listener: ((context, state) {
          if (state is ProductLoadingState) {
            print("it is loading");
          }
          if (state is ProductLoadedState) {}
          if (state is ProductErrorState) {}
        })));
  }
}
