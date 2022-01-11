
import 'package:blog_app_bloc/posts/posts_page.dart';
import 'package:blog_repository/blog_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {

  final ApiPostRepository postRepository;

  const App({Key? key, required this.postRepository}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: postRepository),
      ],
      child: const MaterialApp(
          home: PostsPage(),
      ),
    );
  }
}
