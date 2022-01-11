import 'package:blog_repository/blog_repository.dart';
import 'package:dio/src/cancel_token.dart';

class FakePostRepository implements PostRepository {
  final List<Post> posts = [];

  @override
  Future<void> addPost(Post post) async {
    posts.add(post);
  }

  @override
  Future deletePost(int id) async {
    posts.removeWhere((element) => element.id == id);
  }

  @override
  Future<Post> getPost(int id) async {
   return posts.firstWhere((element) => element.id == id);
  }

  @override
  Future<List<Post>> getPosts({CancelToken? token}) async {
    return posts;
  }

  @override
  Future<void> updatePost(int id, Post post) async {
    final index = posts.indexWhere((element) => element.id == id);
    posts[index] = post;
  }
}
