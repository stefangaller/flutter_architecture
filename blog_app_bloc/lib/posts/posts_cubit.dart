import 'package:blog_app_bloc/posts/posts_states.dart';
import 'package:blog_repository/blog_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsCubit extends Cubit<PostsState> {
  final PostRepository _postsRepository;

  PostsCubit(this._postsRepository) : super(const PostsState.loading());

  Future<void> load() async {
    emit(const PostsState.loading());
    await _fetch();
  }

  Future<void> add() async {
    const post = Post(title: 'A new Bloc Post');
    try {
      await _postsRepository.addPost(post);
      await _fetch();
    } catch (error) {
      emit(const PostsState.error(message: 'could not add post'));
    }
  }

  Future<void> _fetch() async {
    try {
      final posts = await _postsRepository.getPosts();
      emit(PostsState.done(posts: posts));
    } catch (error) {
      emit(PostsState.error(message: error.toString()));
    }
  }
}
