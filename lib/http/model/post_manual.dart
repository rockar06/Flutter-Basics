class PostManual {
  final int userId;
  final int id;
  final String title;
  final String body;

  PostManual({this.userId, this.id, this.title, this.body});

  factory PostManual.fromJson(Map<String, dynamic> json) {
    return PostManual(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  static List<PostManual> fromListJson(List<dynamic> json) {
    var listOfPosts = List<PostManual>();
    if (json.isEmpty) {
      return listOfPosts;
    } else {
      json.map((jsonPost) => listOfPosts.add(PostManual.fromJson(jsonPost)));
    }
    return listOfPosts;
  }
}
