import 'dart:convert';

import 'package:dio/dio.dart';

class PostService {
  final Dio dio = Dio();
  static const fetchLimit = 10;
  final baseUrl = "https://jsonplaceholder.typicode.com/posts";
  Future<List<dynamic>> fetchpost(int page) async {
    try {
      final response =
          await dio.get("$baseUrl?_limit={fetchLimit&_page=$page}");
      return jsonDecode(response.data) as List<dynamic>;
    } catch (e) {
      return [];
    }
  }
}
