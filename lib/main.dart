import 'package:flutter/material.dart';

import './screens/categories-screen.dart';
import './screens/meals-screen.dart';
import './screens/meal-detail-screen.dart';
import './screens/filter-screen.dart';
import './screens/tabs-screen.dart';
import './models/meal.dart';
import './sample-data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'vegetarian': false,
  };

  List<Meal> _availableMeals = meals;

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;
      _availableMeals = meals.where((meal) {
        if (_filters['gluten'] == true && meal.isGlutenFree == false) {
          return false;
        }
        if (_filters['vegetarian'] == true && meal.isVegetarian == false) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.pink,
          centerTitle: true,
        ),
      ),
      routes: {
        '/': (context) => TabsScreen(),
        CategoriesScreen.routeName: (context) => CategoriesScreen(),
        MealsScreen.routeName: (context) => MealsScreen(_availableMeals),
        MealDetailScreen.routeName: (context) => MealDetailScreen(),
        FilterScreen.routeName: (context) => FilterScreen(_filters,_setFilters),
      },
    );
  }
}
