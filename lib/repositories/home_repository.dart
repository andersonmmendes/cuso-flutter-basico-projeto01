import 'package:projeto01/models/post_model.dart';

abstract class HomeRepository {
  Future<List<PostModel>> getList();
}
