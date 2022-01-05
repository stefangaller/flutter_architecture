import 'package:blog_app_bloc/app.dart';
import 'package:blog_repository/blog_repository.dart';
import 'package:flutter/cupertino.dart';

void bootstrap({required PostClient postClient}) {
  final postRepository = PostRepository(postClient);

  runApp(
    App(
      postRepository: postRepository,
    ),
  );
}
