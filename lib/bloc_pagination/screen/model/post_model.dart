class PostModel {
  final String title;
  final String body;
  final String id;
  PostModel.fromJson(Map json)
      : title = json['title'],
        body = json['body'],
        id = json['id'];
}
