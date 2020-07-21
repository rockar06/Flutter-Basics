import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_basics/common/custom_scaffold.dart';
import 'package:flutter_basics/http/model/post.dart';
import 'package:http/http.dart' as http;

class SampleGetData extends StatefulWidget {
  @override
  _SampleGetDataState createState() => _SampleGetDataState();
}

class _SampleGetDataState extends State<SampleGetData> {
  Future<List<Post>> listOfPosts;

  Future<List<Post>> fetchPosts() async {
    final response =
        await http.get("https://jsonplaceholder.typicode.com/posts");
    if (response.statusCode == 200) {
      return Post.fromListJson(jsonDecode(response.body));
    } else {
      throw Exception("Failed to load posts");
    }
  }

  @override
  void initState() {
    listOfPosts = fetchPosts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: "Get Data",
      body: Center(
        child: FutureBuilder<List<Post>>(
          future: listOfPosts,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(
                  "Number of items in the list is: ${snapshot.data.length}");
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            // By default, show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
