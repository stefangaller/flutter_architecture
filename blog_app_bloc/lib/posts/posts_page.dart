
import 'package:blog_app_bloc/posts/posts_cubit.dart';
import 'package:blog_app_bloc/posts/posts_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostsCubit(
        RepositoryProvider.of(context),
      )..load(),
      child: BlocBuilder<PostsCubit, PostsState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: state.maybeWhen(
                done: (data) => Text('${data.length} Posts'),
                orElse: () => const Text('Posts'),
              ),
            ),
            body: RefreshIndicator(
              onRefresh: () => context.read<PostsCubit>().load(),
              child: state.when(
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (error) => SingleChildScrollView(
                  child: Center(
                    child: Text(error.toString()),
                  ),
                ),
                done: (data) => ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final post = data[index];
                    return ListTile(
                      title: Text(post.title),
                      subtitle: Text('#${post.id}'),
                    );
                  },
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              child: const Icon(Icons.add),
              onPressed: () => context.read<PostsCubit>().add(),
            ),
          );
        },
      ),
    );
  }
}
