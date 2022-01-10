import 'package:blog_app_riverpod/posts/posts_controller.dart';
import 'package:blog_app_riverpod/posts/posts_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PostsPage extends ConsumerWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<String?>(postsErrorProvider, (previous, next) {
      if (next != null) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(next)));
      }
    });
    final posts = ref.watch(postListProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: RefreshIndicator(
        onRefresh: () async => ref.read(postsController).refresh(),
        child: posts.when(
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error, trace) => SingleChildScrollView(
                child: Center(child: Text(error.toString()))),
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
        onPressed: () => ref.read(postsController).add(),
      ),
    );
  }
}
