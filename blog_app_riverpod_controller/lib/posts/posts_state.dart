import 'package:blog_repository/blog_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_state.freezed.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState.loading() = _PostsLoading;

  const factory PostsState.data({required List<Post> posts}) = _PostsData;

  const factory PostsState.error({required String errorMessage}) = _PostsError;
}
