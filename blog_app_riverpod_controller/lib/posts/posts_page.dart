import 'package:blog_app_riverpod_controller/posts/posts_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostsPage extends ConsumerWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(postsControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: RefreshIndicator(
        onRefresh: () async =>
            ref.read(postsControllerProvider.notifier).load(),
        child: state.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error) =>
                SingleChildScrollView(child: Center(child: Text(error))),
            data: (posts) => ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    final post = posts[index];
                    return ListTile(
                      title: Text(post.title),
                      subtitle: Text('#${post.id}'),
                    );
                  },
                )),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () => ref.read(postsControllerProvider.notifier).add(),
      ),
    );
  }
}
