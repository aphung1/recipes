import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:recipes/src/features/likes/likes_providers.dart';

class LikesView extends ConsumerWidget {
  const LikesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final likes = ref.watch(likesProvider(id: 0));
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('${likes["likes"]}'),
        IconButton(
            onPressed: () => ref.read(likesProvider(id: 0).notifier).addLike(),
            icon: const Icon(Icons.thumb_up)),
        Text('${likes["dislikes"]}'),
        IconButton(
            onPressed: () =>
                ref.read(likesProvider(id: 0).notifier).addDislike(),
            icon: const Icon(Icons.thumb_down)),
      ],
    );
  }
}
