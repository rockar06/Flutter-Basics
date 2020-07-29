import 'package:json_annotation/json_annotation.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({this.userId, this.id, this.title, this.body});

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);

  static List<Post> fromListJson(List<dynamic> json) {
    var postList = List<Post>();
    if (json.isEmpty)
      return postList;
    else {
      postList = json.map((data) => Post.fromJson(data)).toList();
      return postList;
    }
  }
}
