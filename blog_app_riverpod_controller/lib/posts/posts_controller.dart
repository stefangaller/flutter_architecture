import 'package:blog_app_riverpod_controller/global_providers.dart';
import 'package:blog_app_riverpod_controller/posts/posts_state.dart';
import 'package:blog_repository/blog_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postsControllerProvider = StateNotifierProvider<PostsController, PostsState>(
  (ref) => PostsController(ref.read)..load(),
);

class PostsController extends StateNotifier<PostsState> {
  final Reader read;

  PostsController(this.read) : super(const PostsState.loading());

  load() async {
    state = const PostsState.loading();
    try {
      final posts = await read(postRepositoryProvider).getPosts();
      state = PostsState.data(posts: posts);
    } catch (error) {
      state = PostsState.error(errorMessage: error.toString());
    }
  }

  add() async {
    try {
      const post = Post(title: 'My new post');
      await read(postRepositoryProvider).addPost(post);
      load();
    } catch (error){
      state = PostsState.error(errorMessage: error.toString());
    }
  }
}
