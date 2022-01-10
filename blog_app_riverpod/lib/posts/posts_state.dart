
import 'package:blog_app_riverpod/global_providers.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final postListProvider = FutureProvider.autoDispose((ref){
  final cancelToken = CancelToken();
  ref.onDispose(() => cancelToken.cancel());
  return ref.watch(postRepositoryProvider).getPosts(token: cancelToken);
});

final postsErrorProvider = StateProvider<String?>((ref) => null);