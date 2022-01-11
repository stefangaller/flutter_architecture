import 'package:blog_repository/src/posts/post.dart';
import 'package:blog_repository/src/posts/post_client.dart';
import 'package:blog_repository/src/posts/post_repository.dart';
import 'package:dio/dio.dart';

class ApiPostRepository implements PostRepository {
  final PostClient _postClient;

  ApiPostRepository(this._postClient);

  @override
  Future<List<Post>> getPosts({CancelToken? token}) =>
      _postClient.getPosts(token: token);

  @override
  Future<void> addPost(Post post) => _postClient.addPost(post);

  @override
  Future deletePost(int id) => _postClient.deletePost(id);

  @override
  Future<Post> getPost(int id) => _postClient.getPost(id);

  @override
  Future<void> updatePost(int id, Post post) =>
      _postClient.updatePost(id, post);
}
