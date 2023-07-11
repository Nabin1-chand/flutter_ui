import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:practise_flutter_ui/bloc/model/dummydata_model.dart';

class ApiConstant {
  static String apiData = 'https://dummyjson.com/products';
}

class DioClient {
  final Dio _dio = Dio();
  getAllProduct() async {
    try {
      Response dummuyModel = await _dio.get(ApiConstant.apiData);

      if (kDebugMode) {
        log(dummuyModel.data.toString(), name: 'show model');
      }

      DummyModel modelData = DummyModel();
      modelData.products = List.from(dummuyModel.data['products']).map(
        (e) {
          return Products.fromJson(e);
        },
      ).toList();

      log(modelData.products.toString(), name: "list of products");

      return modelData.products;
    } catch (e) {
      if (kDebugMode) {
        print(e.toString());
      }
    }
  }
}
