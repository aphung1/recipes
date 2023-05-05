import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'likes_providers.g.dart';

@Riverpod(keepAlive: true)
class Likes extends _$Likes {
  @override
  Map<String, int> build({required int id}) {
    return {"id": id, "likes": 0, "dislikes": 0};
  }

  void addLike() => state = {
        ...state,
        "likes": state["likes"] == null ? 0 : state["likes"]! + 1
      };

  void addDislike() => state = {
        ...state,
        "dislikes": state["dislikes"] == null ? 0 : state["dislikes"]! + 1
      };
}
