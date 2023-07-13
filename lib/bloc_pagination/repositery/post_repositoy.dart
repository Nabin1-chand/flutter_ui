import 'package:practise_flutter_ui/bloc_pagination/screen/model/post_model.dart';
import 'package:practise_flutter_ui/bloc_pagination/screen/model/post_service.dart';

class PostRepository {
  final PostService postService;
  PostRepository(this.postService);
  Future<List<PostModel>> fetchPosts(int page) async {
    final posts = await postService.fetchpost(page);
    return posts.map((e) => PostModel.fromJson(e)).toList();
  }
}
