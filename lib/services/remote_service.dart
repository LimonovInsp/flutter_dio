import 'package:flutter_http/models/post.dart';
import 'package:dio/dio.dart';

class RemoteService {
  var dio = Dio();

  Future<List<Post>> fetchPosts() async {
    try {
      final response =
          await dio.get('https://jsonplaceholder.typicode.com/posts');

      print(response.data);

      return Post.listFromJson(response.data);
    } on DioError catch (error) {
      throw Exception('Failed to load posts');
    }
  }
}
