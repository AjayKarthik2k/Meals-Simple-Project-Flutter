import 'package:flutter/material.dart';

class Meal {
  final String id;
  final List<String> categories;
  final String name;
  final String time;
  final String difficulty;
  final String imageUrl;
  final List<String> steps;
  final bool isGlutenFree;
  final bool isVegetarian;

  const Meal({
    @required this.categories,
    @required this.id,
    @required this.name,
    @required this.time,
    @required this.difficulty,
    @required this.imageUrl,
    @required this.steps,
    @required this.isGlutenFree,
    @required this.isVegetarian,
  });
}
