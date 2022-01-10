import 'package:blog_app_riverpod_controller/config.dart';
import 'package:blog_repository/blog_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

final configProvider = Provider<Config>(
  (ref) => throw Exception('config not specified'),
);

final dioProvider = Provider((ref) {
  final config = ref.watch(configProvider);
  final baseOptions = BaseOptions(baseUrl: config.baseUrl);
  final dio = Dio(baseOptions);
  if (config.debug) {
    dio.interceptors.add(PrettyDioLogger());
  }
  return dio;
});

final postClientProvider = Provider(
  (ref) => PostClient(
    ref.watch(dioProvider),
  ),
);

final postRepositoryProvider = Provider(
  (ref) => PostRepository(
    ref.watch(postClientProvider),
  ),
);
