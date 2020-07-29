import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_basics/common/custom_scaffold.dart';
import 'package:flutter_basics/http/model/post.dart';
import 'package:http/http.dart' as http;

class SampleSendData extends StatefulWidget {
  @override
  _SampleSendDataState createState() => _SampleSendDataState();
}

class _SampleSendDataState extends State<SampleSendData> {
  final idTextController = TextEditingController();
  final titleTextController = TextEditingController();
  final bodyTextController = TextEditingController();
  Future<Post> _futurePosts;

  Future<Post> createPost() async {
    final response = await http.post(
      'https://jsonplaceholder.typicode.com/posts',
      headers: getRequestHeaders(),
      body: jsonEncode(getRequestBody()),
    );
    if (response.statusCode == 201) {
      return Post.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('There is an error while posting data!');
    }
  }

  Post getRequestBody() {
    return Post(
      userId: parseStringNumberToInt(idTextController),
      id: parseStringNumberToInt(idTextController),
      title: titleTextController.text,
      body: bodyTextController.text,
    );
  }

  int parseStringNumberToInt(TextEditingController controller) {
    var stringNumber = controller.text;
    return int.parse(stringNumber);
  }

  Map<String, String> getRequestHeaders() {
    return {
      'Content-Type': 'application/json; charset=UTF-8',
    };
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: 'Send Data',
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: idTextController,
              decoration: InputDecoration(hintText: 'User ID'),
            ),
            SizedBox(
              height: 24.0,
            ),
            TextField(
              controller: titleTextController,
              decoration: InputDecoration(hintText: 'Title'),
            ),
            SizedBox(
              height: 24.0,
            ),
            TextField(
              controller: bodyTextController,
              decoration: InputDecoration(hintText: 'Body'),
            ),
            SizedBox(
              height: 24.0,
            ),
            _getButtonOrCircularProgress(context)
          ],
        ),
      ),
    );
  }

  _submitNewPost() {
    print('Pressing the button');
    setState(() {
      _futurePosts = createPost();
    });
  }

  Widget _getButtonOrCircularProgress(BuildContext context) {
    return (_futurePosts == null)
        ? _getRaisedButtonToSubmit()
        : FutureBuilder<Post>(
            future: _futurePosts,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                print('Posted successful!');
                return _getRaisedButtonToSubmit();
              } else if (snapshot.hasError) {
                print('Error while posting!');
                return _getRaisedButtonToSubmit();
              }
              return CircularProgressIndicator();
            },
          );
  }

  Widget _getRaisedButtonToSubmit() {
    return RaisedButton(
      onPressed: _submitNewPost,
      child: Text('Submit Post!'),
    );
  }
}
