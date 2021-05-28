import 'package:flutter/material.dart';
import 'package:meals/screens/meals-screen.dart';

class CategoryContainer extends StatelessWidget {
  final String id;
  final String mealCategory;
  final Color color;

  CategoryContainer({
    @required this.id,
    @required this.mealCategory,
    @required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          MealsScreen.routeName,
          arguments: {
            'id': id,
            'name': mealCategory,
          },
        );
      },
      splashColor: color,
      borderRadius: BorderRadius.circular(18),
      child: Container(
        alignment: Alignment.center,
        child: Text(
          mealCategory,
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(18),
        ),
      ),
    );
  }
}
