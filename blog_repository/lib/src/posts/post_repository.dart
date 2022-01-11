import 'package:blog_repository/src/posts/post.dart';
import 'package:dio/dio.dart';

abstract class PostRepository {
  Future<List<Post>> getPosts({CancelToken? token});

  Future<void> addPost(Post post);

  Future deletePost(int id);

  Future<Post> getPost(int id);

  Future<void> updatePost(int id, Post post);
}