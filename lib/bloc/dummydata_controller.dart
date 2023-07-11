import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practise_flutter_ui/bloc/abstract_model.dart';
import 'package:practise_flutter_ui/bloc/api_data/api_constant.dart';
import 'package:practise_flutter_ui/bloc/model/dummydata_model.dart';

class DummyDataCubit extends Cubit<DummyEvent> {
  DummyDataCubit() : super(LoadingState());

  fetchDummyData() async {
    emit(LoadingState());
    try {
      List<Products> dummuyModel = await DioClient().getAllProduct();
      log(dummuyModel.toString(), name: "kakakkaka");
      emit(LoadedState(dummuyModel));
    } catch (e) {
      if (kDebugMode) {
        emit(ErrorState(e.toString()));
      }
    }
  }
}
