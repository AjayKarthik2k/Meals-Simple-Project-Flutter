import 'package:flutter/material.dart';

import './models/meal.dart';
import './models/category.dart';

const List<Meal> meals = const [
  Meal(
    id: 'm1',
    categories: ['s', 'b'],
    name: "Dosa",
    time: "2m",
    difficulty: "Easy",
    imageUrl:
        "https://www.cookingandme.com/wp-content/uploads/2013/11/dosa.jpg",
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: true,
    isVegetarian: true,
  ),
  Meal(
    id: 'm2',
    categories: ['s', 'b'],
    name: "Idli",
    time: "10m",
    difficulty: "Easy",
    imageUrl:
        "https://www.vegrecipesofindia.com/wp-content/uploads/2012/04/idli-recipe-1-500x500.jpg",
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm3',
    categories: ['b'],
    name: "Poori",
    time: "15m",
    difficulty: "Medium",
    imageUrl:
        "https://www.viniscookbook.com/wp-content/uploads/2018/08/perfect-poori.jpg",
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegetarian: true,
  ),
  Meal(
    id: 'm4',
    categories: ['s'],
    name: "Chicken isVandwich",
    time: "10m",
    difficulty: "Medium",
    imageUrl:
        "https://www.indianhealthyrecipes.com/wp-content/uploads/2019/05/club-sandwich-recipe.jpg",
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: true,
    isVegetarian: false,
  ),
  Meal(
    id: 'm5',
    categories: ['b', 'd', 'l'],
    name: "Roti",
    time: "20m",
    difficulty: "Hard",
    imageUrl:
        "https://www.thecuriouschickpea.com/wp-content/uploads/2020/11/homemade-roti-8-720x720.jpg",
    steps: [
      'Cut the tomatoes and the onion into small pieces.',
      'Boil some water - add salt to it once it boils.',
      'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'In the meantime, heaten up some olive oil and add the cut onion.',
      'After 2 minutes, add the tomato pieces, salt, pepper and your other spices.',
      'The sauce will be done once the spaghetti are.',
      'Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: true,
    isVegetarian: true,
  ),
];

const List<Categories> categories = const [
  Categories(
    name: "Breakfast",
    id: 'b',
    color: Colors.red,
  ),
  Categories(
    name: "Lunch",
    id: 'l',
    color: Colors.blueAccent,
  ),
  Categories(
    name: "Snack",
    id: 's',
    color: Colors.teal,
  ),
  Categories(
    name: "Dinner",
    id: 'd',
    color: Colors.pink,
  ),
];
