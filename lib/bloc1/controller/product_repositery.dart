import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:practise_flutter_ui/bloc/api_data/api_constant.dart';
import 'package:practise_flutter_ui/bloc/model/dummydata_model.dart';

class ProductRepository {
  final Dio _dio = Dio();
  fetchProductData() async {
    try {
      Response response = await _dio.get(ApiConstant.apiData);
      DummyModel dummyModel = DummyModel();
      return dummyModel.products = List.from(response.data['products'])
          .map((e) => Products.fromJson(e))
          .toList();
    } catch (e) {
      throw Exception();
    }
  }
}
