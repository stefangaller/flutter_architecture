import 'package:blog_repository/blog_repository.dart';
import 'package:blog_repository/src/posts/post.dart';
import 'package:blog_repository/src/posts/post_client.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockPostClient extends Mock implements PostClient {}

main() {
  late PostClient postClient;
  late ApiPostRepository postRepository;

  setUp(() {
    postClient = MockPostClient();
    postRepository = ApiPostRepository(postClient);
  });

  test('get posts', () async {
    const posts = [
      Post(id: 1, title: 'Post 1'),
      Post(id: 2, title: 'Post 2'),
    ];
    when(() => postClient.getPosts()).thenAnswer((invocation) async => posts);

    final receivedPosts = await postRepository.getPosts();
    expect(receivedPosts, posts);
  });
}
