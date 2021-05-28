import 'package:flutter/material.dart';

import '../sample-data.dart';
import 'package:meals/models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  static const routeName = '/meal-detail-screen';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final mealId = routeArgs['mealId'];

    final selectedMeal = meals.firstWhere((meal) => meal.id == mealId);

    return Scaffold(
      appBar: AppBar(title: Text("${selectedMeal.name}")),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.yellow,
        onPressed: () => Navigator.of(context).pop(),
        child: Icon(
          Icons.delete,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            titleContainer(),
            stepsContainer(selectedMeal),
          ],
        ),
      ),
    );
  }

  // Container that displays the steps
  // to prepare the meal
  Container stepsContainer(Meal selectedMeal) {
    return Container(
      decoration: BoxDecoration(
        // color: Colors.red,
        border: Border.all(color: Colors.grey, width: 3.0),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      height: 250,
      width: double.infinity,
      child: ListView.builder(
        itemCount: selectedMeal.steps.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(child: Text("# ${index + 1}")),
            title: Text(selectedMeal.steps[index]),
          );
        },
      ),
    );
  }

  // Container that displays the text
  Container titleContainer() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      // color: Colors.blue,
      child: Text(
        "Steps",
        style: TextStyle(
          fontSize: 26,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
