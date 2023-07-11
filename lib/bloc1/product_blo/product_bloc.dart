import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practise_flutter_ui/bloc1/controller/product_repositery.dart';
import 'package:practise_flutter_ui/bloc1/event/product_event.dart';
import 'package:practise_flutter_ui/bloc1/state/abstract_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductLoadingState()) {
    on<LoadProductEvent>((event, emit) async {
      emit(ProductLoadingState());
      try {
        final products = await ProductRepository().fetchProductData();
        emit(ProductLoadedState(products));
      } catch (e) {
        emit(ProductErrorState(e.toString()));
      }
    });
  }
}
