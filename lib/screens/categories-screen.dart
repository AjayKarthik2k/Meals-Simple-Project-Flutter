import 'package:flutter/material.dart';

import '../sample-data.dart';
import '../widgets/category-container.dart';

class CategoriesScreen extends StatelessWidget {
  static const routeName = '/categories-screen';
  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 3.5,
      ),
      children: categories
          .map(
            (category) => CategoryContainer(
              mealCategory: category.name,
              id: category.id,
              color: category.color,
            ),
          )
          .toList(),
    );
  }
}
