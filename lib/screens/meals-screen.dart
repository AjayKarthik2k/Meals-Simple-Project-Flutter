import 'package:flutter/material.dart';

import '../widgets/meal-container.dart';
import '../models/meal.dart';

class MealsScreen extends StatefulWidget {
  static const routeName = '/meals-screen';

  final List<Meal> availableMeals;

  MealsScreen(this.availableMeals);

  @override
  _MealsScreenState createState() => _MealsScreenState();
}

class _MealsScreenState extends State<MealsScreen> {
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryName = routeArgs['name'];
    final categoryId = routeArgs['id'];

    final displayedMeals = widget.availableMeals.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text(categoryName)),
      body: ListView.builder(
        itemCount: displayedMeals.length,
        itemBuilder: (context, index) {
          return MealContainer(
            id: displayedMeals[index].id,
            name: displayedMeals[index].name,
            time: displayedMeals[index].time,
            difficulty: displayedMeals[index].difficulty,
            imageUrl: displayedMeals[index].imageUrl,
            
          );
        },
      ),
    );
  }
}
