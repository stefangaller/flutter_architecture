import 'package:blog_app_riverpod/posts/posts_service.dart';
import 'package:blog_app_riverpod/posts/posts_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postsController = Provider((ref) => PostsController(ref));

class PostsController {
  final ProviderRef _ref;
  final PostsService _postsService;

  PostsController(this._ref)
      : _postsService = _ref.watch(postsServiceProvider);

  void refresh() {
    _ref.refresh(postListProvider);
  }

  void add() async {
    await _postsService.addPost(name: 'My new Post');
    refresh();
  }
}
