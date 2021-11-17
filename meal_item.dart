import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/screens/categoreis_screen.dart';
import '../screens/meal_details_screen.dart';

class Mealformat extends StatelessWidget {
  final String title;
  final String imageUrl;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;
  final String id;

  Mealformat(
      {required this.title,
      required this.imageUrl,
      required this.duration,
      required this.complexity,
      required this.affordability,
      required this.id});

  String get complexText {
    switch (complexity) {
      case Complexity.Simple:
        return 'simple';

      case Complexity.Challenging:
        return 'challenging';

      case Complexity.Hard:
        return 'Hard';
    }
  }

  String get affordaEnum {
    switch (affordability) {
      case Affordability.Affordable:
        return ' affordable';

      case Affordability.Luxurious:
        return ' Luxurious';

      case Affordability.Pricey:
        return 'pricey';
    }
  }

  void imageDetails(BuildContext ctx) {
    Navigator.of(ctx).push(MaterialPageRoute(builder: (ct) {
      return MealDetails(id, title);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => imageDetails(context),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5,
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                    child: Image.network(
                      imageUrl,
                      height: 250,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 10,
                    child: Container(
                      width: 220,
                      color: Colors.black54,
                      child: Text(
                        title,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Icon(Icons.timelapse_rounded),
                  Flexible(
                    flex: 1,
                    child: Text(
                      '$duration min',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Icon(Icons.work_off_sharp),
                  Flexible(
                    flex: 1,
                    fit: FlexFit.loose,
                    child: Text(
                      '$complexText',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Icon(Icons.monetization_on),
                  Flexible(
                    flex: 1,
                    child: Text('$affordaEnum',
                        style: TextStyle(
                          color: Colors.black,
                        )),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
