import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:practise_flutter_ui/bloc_pagination/cubit/post_state.dart';
import 'package:practise_flutter_ui/bloc_pagination/repositery/post_repositoy.dart';
import 'package:practise_flutter_ui/bloc_pagination/screen/model/post_model.dart';

class PostCubit extends Cubit<PostState> {
  final PostRepository postRepository;
  PostCubit(this.postRepository) : super(PostInitial());
  int page = 1;
  void loadpost() {
    if (state is PostLoading) return;
    final currentState = state;
    var oldPost = <PostModel>[];
    if (currentState is PostLoaded) {
      oldPost = currentState.postModel;
    }
    emit(PostLoading(oldPost, isFirstFetch: page == 1));
    postRepository.fetchPosts(page).then((newPosts) {
      page++;
      final posts = (state as PostLoading).oldPostModel;
      posts.add(newPosts as PostModel);
      emit(PostLoaded(posts));
    });
  }
}
