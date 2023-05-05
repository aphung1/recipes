import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:recipes/src/features/main/main.dart';
import '../likes/likes_view.dart';

class MainView extends ConsumerWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(indexProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorite Recipes"),
      ),
      body: _Body(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) => ref.read(indexProvider.notifier).setValue(value),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.emoji_food_beverage_outlined),
              label: "Breakfast"),
          BottomNavigationBarItem(
              icon: Icon(Icons.fastfood_outlined), label: "Lunch"),
          BottomNavigationBarItem(
              icon: Icon(Icons.nightlife_rounded), label: "Dinner"),
        ],
      ),
    );
  }
}

class _Body extends ConsumerWidget {
  final int id;

  const _Body(this.id);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[LikesView(id: id)],
    ));
  }
}
