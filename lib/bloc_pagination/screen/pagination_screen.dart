import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practise_flutter_ui/bloc_pagination/cubit/post_cubit.dart';
import 'package:practise_flutter_ui/bloc_pagination/cubit/post_state.dart';
import 'package:practise_flutter_ui/bloc_pagination/screen/model/post_model.dart';

class Pageview extends StatefulWidget {
  const Pageview({
    super.key,
  });

  @override
  State<Pageview> createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  final scrollController = ScrollController();

  void setUpController(context) {
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        if (scrollController.position.pixels != 0) {
          BlocProvider.of<PostCubit>(context).loadpost();
        }
      }
    });
  }

  @override
  void initState() {
    setUpController(context);
    BlocProvider.of<PostCubit>(context).loadpost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pagination'),
      ),
      body: BlocBuilder<PostCubit, PostState>(builder: (context, state) {
        if (state is PostLoading && state.isFirstFetch) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        List<PostModel> postModel = [];
        bool isLoading = false;

        if (state is PostLoading) {
          postModel = state.oldPostModel;
        } else if (state is PostLoaded) {
          postModel = state.postModel;
        }
        return ListView.separated(
            controller: scrollController,
            itemBuilder: ((context, index) {
              if (index < postModel.length) {
                return Column(
                  children: [
                    Text(postModel[index].id),
                    Text(postModel[index].body),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(postModel[index].title),
                  ],
                );
              } else {
                Timer(const Duration(milliseconds: 30), () {
                  scrollController
                      .jumpTo(scrollController.position.maxScrollExtent);
                });
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }),
            separatorBuilder: (context, index) {
              return Divider(
                color: Colors.grey[400],
              );
            },

            // ignore: dead_code
            itemCount: postModel.length + (isLoading ? 1 : 0));
      }),
    );
  }
}
