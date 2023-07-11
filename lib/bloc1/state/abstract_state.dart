import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:practise_flutter_ui/bloc/model/dummydata_model.dart';

abstract class ProductState extends Equatable {}

class ProductLoadingState extends ProductState {
  @override
  List<Object?> get props => [];
}

class ProductLoadedState extends ProductState {
  final List<Products> products;
  ProductLoadedState(this.products);
  @override
  List<Object?> get props => [products];
}

class ProductErrorState extends ProductState {
  final String error;
  ProductErrorState(this.error);
  @override
  List<Object?> get props => [error];
}
