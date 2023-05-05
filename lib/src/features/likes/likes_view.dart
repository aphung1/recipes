import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:recipes/src/features/likes/likes_providers.dart';
import 'package:recipes/src/features/main/main.dart';

class LikesView extends ConsumerWidget {
  const LikesView({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(indexProvider);
    final likes = ref.watch(likesProvider(id: currentIndex));

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${likes["likes"]}'),
        IconButton(
            onPressed: () =>
                ref.read(likesProvider(id: currentIndex).notifier).addLike(),
            icon: const Icon(Icons.thumb_up)),
        Text('${likes["dislikes"]}'),
        IconButton(
            onPressed: () =>
                ref.read(likesProvider(id: currentIndex).notifier).addDislike(),
            icon: const Icon(Icons.thumb_down)),
      ],
    );
  }
}
