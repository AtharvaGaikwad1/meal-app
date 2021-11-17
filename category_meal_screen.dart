import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';

import '../models/dummy_data .dart';
import 'package:meals/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String categoryID;
  final String categoryTitle;

  CategoryMealsScreen(this.categoryID, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final categoryMeals = DUMMY_MEALS.where((ctx) {
      return ctx.categories.contains(categoryID);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return Mealformat(
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl,
              duration: categoryMeals[index].duration,
              complexity: categoryMeals[index].complexity,
              affordability: categoryMeals[index].affordability,
              id: categoryMeals[index].id,
            );
          },
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}
