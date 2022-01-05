import 'package:blog_repository/src/posts/post.dart';
import 'package:blog_repository/src/posts/post_client.dart';
import 'package:dio/dio.dart';

class PostRepository {
  final PostClient _postClient;

  PostRepository(this._postClient);

  Future<List<Post>> getPosts({CancelToken? token}) =>
      _postClient.getPosts(token: token);
}
