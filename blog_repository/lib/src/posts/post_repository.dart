import 'package:blog_repository/src/posts/post.dart';
import 'package:blog_repository/src/posts/post_client.dart';
import 'package:dio/dio.dart';

class PostRepository {
  final PostClient _postClient;

  PostRepository(this._postClient);

  Future<List<Post>> getPosts({CancelToken? token}) =>
      _postClient.getPosts(token: token);

  Future<void> addPost(Post post) => _postClient.addPost(post);

  Future deletePost(int id) => _postClient.deletePost(id);

  Future<Post> getPost(int id) => _postClient.getPost(id);

  Future<void> updatePost(int id, Post post) =>
      _postClient.updatePost(id, post);
}
