import 'package:blog_app_riverpod/global_providers.dart';
import 'package:blog_repository/blog_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postsServiceProvider = Provider(
  (ref) => PostsService(
    ref.watch(postRepositoryProvider),
  ),
);

class PostsService {
  final PostRepository _postRepository;

  PostsService(this._postRepository);

  Future<List<Post>> getPosts({CancelToken? token}) {
    return _postRepository.getPosts(token: token);
  }

  Future<void> addPost({required String name}) {
    final newPost = Post(title: name);
    return _postRepository.addPost(newPost);
  }
}
