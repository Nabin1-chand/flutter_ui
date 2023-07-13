// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:practise_flutter_ui/bloc_pagination/screen/model/post_model.dart';

@immutable
abstract class PostState {}

class PostInitial extends PostState {}

class PostLoaded extends PostState {
  final List<PostModel> postModel;
  PostLoaded(this.postModel);
}

class PostLoading extends PostState {
  final List<PostModel> oldPostModel;
  bool isFirstFetch;
  PostLoading(this.oldPostModel, {this.isFirstFetch = false});
}

class PostError extends PostState {
  final String error;
  PostError(this.error);
}
