import 'package:flutter/material.dart';
import 'package:meals/screens/categoreis_screen.dart';
import 'package:meals/screens/tabs_screen.dart';
import 'screens/categoreis_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false
  };

  void setFilters(Map<String, bool> filterData) {}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DeliMeals",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        canvasColor: Colors.grey,
        fontFamily: 'NotoSans',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(
                color: Colors.blueGrey[300],
              ),
              bodyText2: TextStyle(
                color: Colors.orange[100],
                fontFamily: 'NotoSans',
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
      ),
      home: TabsScreen(),
    );
  }
}
