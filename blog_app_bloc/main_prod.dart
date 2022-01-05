import 'package:blog_app_bloc/app.dart';
import 'package:blog_app_bloc/bootstrap.dart';
import 'package:blog_repository/blog_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  final Dio dio = Dio(BaseOptions(baseUrl: 'https://bettercoding.dev'));
  final PostClient postClient = PostClient(dio);

  bootstrap(postClient: postClient);
}
