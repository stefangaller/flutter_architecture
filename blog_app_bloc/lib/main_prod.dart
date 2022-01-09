import 'package:blog_app_bloc/bootstrap.dart';
import 'package:blog_repository/blog_repository.dart';
import 'package:dio/dio.dart';

void main() {
  // for demonstration purposes, this url does not exist
  final Dio dio = Dio(BaseOptions(baseUrl: 'https://bettercoding.dev/api/'));
  final PostClient postClient = PostClient(dio);

  bootstrap(postClient: postClient);
}
