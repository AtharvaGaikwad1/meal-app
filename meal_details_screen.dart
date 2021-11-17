import 'package:flutter/material.dart';
import 'package:meals/models/dummy_data%20.dart';

class MealDetails extends StatelessWidget {
  String id;
  String title;
  MealDetails(this.id, this.title);

  @override
  Widget build(BuildContext context) {
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == id);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.network(
                  selectedMeal.imageUrl,
                  height: 250,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Text(
                'Ingridients',
                style: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              height: 200,
              width: 600,
              child: ListView.builder(
                itemBuilder: (ctx, index) => Card(
                  color: Colors.red[200],
                  child: Text(selectedMeal.ingredients[index]),
                ),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 1),
              child: Text(
                'Steps',
                style: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontSize: 22,
                  color: Colors.black,
                ),
              ),
            ),
            Container(
              height: 250,
              width: 600,
              child: ListView.builder(
                itemBuilder: (ctx, index) => Column(children: [
                  ListTile(
                    leading: CircleAvatar(
                      child: Text('# ${(index + 1)}'),
                    ),
                    title: Text(selectedMeal.steps[index]),
                  ),
                  Divider()
                ]),
                itemCount: selectedMeal.ingredients.length,
              ),
            ),
            Container()
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.delete,
        ),
        onPressed: () {
          Navigator.of(context).pop(id);
        },
      ),
    );
  }
}
