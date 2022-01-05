import 'package:blog_app_bloc/bootstrap.dart';
import 'package:blog_repository/blog_repository.dart';
import 'package:dio/dio.dart';

void main() {
  final Dio dio = Dio(BaseOptions(baseUrl: 'http://192.168.0.206'));
  final PostClient postClient = PostClient(dio);

  bootstrap(postClient: postClient);
}
