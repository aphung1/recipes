import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'main_providers.g.dart';

@riverpod
class Index extends _$Index {
  @override
  int build() {
    return 0;
  }

  void setValue(int value) => state = value;
}
