import 'package:blog_repository/src/posts/post.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/dio.dart';
import 'package:retrofit/http.dart';

part 'post_client.g.dart';

@RestApi()
abstract class PostClient {
  factory PostClient(Dio dio, {String baseUrl}) = _PostClient;

  @GET('/posts')
  Future<List<Post>> getPosts({@CancelRequest() CancelToken? token});
}
