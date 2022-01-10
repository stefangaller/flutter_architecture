import 'package:blog_app_riverpod/posts/posts_service.dart';
import 'package:blog_app_riverpod/posts/posts_state.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postsController = Provider((ref) => PostsController(ref));

class PostsController {
  final ProviderRef _ref;

  PostsController(this._ref);

  PostsService get _postsService => _ref.read(postsServiceProvider);

  StateController<String?> get _errorController =>
      _ref.read(postsErrorProvider.notifier);

  void refresh() {
    _ref.refresh(postListProvider);
  }

  void add() async {
    try {
      await _postsService.addPost(name: 'My new Post');
      refresh();
    } on DioError catch (error) {
      _errorController.state = error.message;
    }
  }
}
