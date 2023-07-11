import 'package:practise_flutter_ui/bloc/model/dummydata_model.dart';

abstract class DummyEvent {}

class LoadingState extends DummyEvent {}

class LoadedState extends DummyEvent {
  List<Products> dummuyModel;
  LoadedState(this.dummuyModel);
}

class ErrorState extends DummyEvent {
  String message;
  ErrorState(this.message);
}
