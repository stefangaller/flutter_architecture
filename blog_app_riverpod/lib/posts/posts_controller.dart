import 'package:blog_app_riverpod/posts/posts_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postsController = Provider((ref) => PostsController(ref));

class PostsController {
  final ProviderRef _ref;

  PostsController(this._ref);

  void refresh() {
    _ref.refresh(postListProvider);
  }
}
