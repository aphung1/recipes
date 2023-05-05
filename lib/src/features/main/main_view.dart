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

  _Body(this.id);

  final List<Map> data = [
    {
      "image": "breakfast.jpg",
      "title": "Blueberry Banana Pancakes",
      "ingredients": [
        "Blueberries",
        "Bananas",
        "Flour",
        "Sugar",
        "Milk",
        "Salt",
        "Butter"
      ]
    },
    {
      "image": "lunch.jpg",
      "title": "Roasted tomato pesto pasta",
      "ingredients": [
        "Sun-roasted cherry tomatoes",
        "Pesto",
        "Mushroom",
        "Fettuccine",
        "Basil",
        "Beef",
        "Heavy Cream",
        "Salt",
        "Garlic"
      ]
    },
    {
      "image": "dinner.jpg",
      "title": "Sesame crusted salmon fillets",
      "ingredients": [
        "Salmon",
        "Sesame seeds",
        "Soy sauce",
        "Zucchini",
        "Lemon",
        "Salt",
        "Oil"
      ]
    }
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: <Widget>[
        Image.asset(
          'assets/${data[id]["image"]}',
          height: MediaQuery.of(context).size.height / 3,
          width: double.infinity,
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(data[id]["title"],
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center),
        ),
        LikesView(id: id),
        Text(
          "Ingredients",
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, position) {
              return Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text(
                    data[id]["ingredients"][position],
                    style: const TextStyle(fontSize: 22.0),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
