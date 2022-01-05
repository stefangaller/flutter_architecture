
import 'package:blog_repository/blog_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_states.freezed.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState.loading() = _Loading;
  const factory PostsState.error({required String message}) = _Error;
  const factory PostsState.done({required List<Post> posts}) = _Done;
}